
import 'package:flutter/material.dart';
import 'package:herbel_products/homescreen/catagory.dart';// Ensure the filename matches

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length, // Corrected itemCount
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      categories[index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 65,
                width: 65,
              ),
              const SizedBox(height: 8), // Add some spacing between the image and the text
              Text(
                categories[index].title,
                style: const TextStyle(fontSize: 14), // Optional styling
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
