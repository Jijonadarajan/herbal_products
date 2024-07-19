import 'package:flutter/material.dart';
import 'package:herbel_products/homescreen/catagories.dart';
import 'package:herbel_products/homescreen/imageslider.dart';
import 'package:herbel_products/homescreen/product.dart';
import 'package:herbel_products/productcard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentslider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color.fromARGB(56, 22, 77, 2), // Change this color
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromARGB(56, 15, 56, 0), // Change this color
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune),
                  ),
                ),
              ),
              Imageslider(
                onchange: (value) {
                  setState(() {
                    currentslider = value;
                  });
                },
                currentslide: currentslider,
              ),
              SizedBox(height: 20),
              Categories(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suggestion For You',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blue),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20
                ),
                itemCount: products.length, // Add this line
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

          