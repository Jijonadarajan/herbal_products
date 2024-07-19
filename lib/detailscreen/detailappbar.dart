import 'package:flutter/material.dart';
class Detailappbar extends StatefulWidget {
  const Detailappbar({super.key});

  @override
  State<Detailappbar> createState() => _DetailappbarState();
}

class _DetailappbarState extends State<Detailappbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: Row(
      children: [
        IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back,),
          
         iconSize: 30,),
         
         SizedBox(width: 200),
         IconButton(
        onPressed: () {},
          icon: Icon(Icons.share),
         iconSize: 30,),
         SizedBox(width: 30,),
         IconButton(
        onPressed: () {},
          icon: Icon(Icons.favorite),
         iconSize: 30,),
      ],
    ),);
    
  }
}