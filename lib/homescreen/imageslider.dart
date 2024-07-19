import 'dart:async';
import 'package:flutter/material.dart';

class Imageslider extends StatefulWidget {
  final Function(int) onchange;
  final int currentslide;

  const Imageslider({super.key, required this.onchange, required this.currentslide});

  @override
  State<Imageslider> createState() => _ImagesliderState();
}

class _ImagesliderState extends State<Imageslider> {
  final List<String> images = [
    'assets/pexels-karolina-grabowska-4465830.jpg',
    'assets/pexels-pixabay-531446.jpg',
    'assets/pexels-polina-tankilevitch-3735627.jpg',
    'assets/pexels-tara-winstead-6694216.jpg',
  ];

  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentslide);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      int nextPage = _pageController.page!.toInt() + 1;
      if (nextPage >= images.length) {
        nextPage = 0;
      }
      _pageController.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
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
          height: 220,
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
                return Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
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
                    color: widget.currentslide == index ? Color.fromARGB(255, 22, 47, 9) : Color.fromARGB(255, 7, 59, 6),
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
