import 'package:flutter/material.dart';
import 'package:herbel_products/homescreen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  final pages = [
    Homescreen(),
    Text('alagu'),
    Text('hasim'),
    Text('data')
  ];
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: pages[currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
           
          selectedItemColor: Color.fromARGB(56, 51, 156, 13), 
          unselectedItemColor: const Color.fromARGB(255, 61, 59, 59), 
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Category",
              activeIcon: Icon(Icons.category),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "Orders",
              activeIcon: Icon(Icons.bookmark),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              activeIcon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
