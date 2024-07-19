import 'dart:async';
import 'package:flutter/material.dart';

class Imageslider1 extends StatefulWidget {
  final Function(int) onchange;
  final int currentslide;
  const Imageslider1({super.key, required this.onchange, required this.currentslide});

  @override
  State<Imageslider1> createState() => _Imageslider1State();
}

class _Imageslider1State extends State<Imageslider1> {
  final List<String> images = [
    'assets/herbal.png.png',
    'assets/hairoil.png',
    'assets/herbal.png.png',
    'assets/herbalsignup.png',
  ];

  PageController _pageController = PageController();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_pageController.page!.round() == images.length - 1) {
        _pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      } else {
        _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 350,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: widget.onchange,
              physics: ClampingScrollPhysics(),
              children: images.map((image) {
                return Image.asset(
                  image,
                  fit: BoxFit.cover,
                );
              }).toList(),
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: widget.currentslide == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.currentslide == index
                        ? Color.fromARGB(255, 44, 113, 7)
                        : Color.fromARGB(255, 44, 113, 7),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
