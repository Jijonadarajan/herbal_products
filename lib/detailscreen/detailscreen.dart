import 'package:flutter/material.dart';
import 'package:herbel_products/detailscreen/addtocart.dart';
import 'package:herbel_products/detailscreen/des.dart';
import 'package:herbel_products/detailscreen/detailappbar.dart';
import 'package:herbel_products/detailscreen/imageslider.dart';
import 'package:herbel_products/homescreen/product.dart';

class Detailscreen extends StatefulWidget {
  final Product product;

  const Detailscreen({super.key, required this.product});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 226),
      floatingActionButton: Addtocart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Detailappbar(),
              Imageslider1(
                onchange: (index) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
                currentslide: _currentSlide,
                 // Pass the product image here
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                
                ),
                child: Column(
                  children: [
                    Des(product: widget.product,)
                  ],
                ),
                
                 
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
