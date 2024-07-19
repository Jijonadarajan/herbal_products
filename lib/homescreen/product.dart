import 'package:flutter/material.dart';

class Product {
  final String tittle;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rating;
  final double quantity;

  Product({
    required this.tittle,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rating,
    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),
    Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Used for therapeutic purposes.Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Used for therapeutic purposes.Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Used for therapeutic purposes.Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Used for therapeutic purposes.Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Used for therapeutic purposes.',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),  Product(
    tittle: 'Medicinal Herbs',
    review: '320 Reviews',
    description: 'Chamomile Tea is a popular herbal infusion made from the dried flowers of the chamomile plant. Traditionally used for its calming effects, chamomile is known to aid sleep, reduce anxiety, and soothe digestive issues',
    image: 'assets/herbal.png.png',
    price: 200,
    colors: [Color(0xFF0A7B0E), Color(0xFF0A7B0E), Color(0xFF0A7B0E)],
    seller: 'India',
    category: 'face',
    rating: 5.0,
    quantity: 1,
  ),
  // Add more products as needed...
];
