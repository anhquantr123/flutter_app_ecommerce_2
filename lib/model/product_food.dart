import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> image;
  final List<Color> colors;
  final double rating;
  final int price;
  final bool isFavourite, isPopular;

  Product({
    required this.image,
    required this.colors,
    required this.title,
    required this.description,
    required this.price,
    this.isFavourite = false,
    this.isPopular = false,
    this.rating = 0.0,
  });
}

List<Product> listProducts = [
  Product(
    image: ["assets/images/pho1.jpg"],
    colors: [const Color(0xFFF6625E), const Color(0xFF936D88), Colors.white],
    title: "Phở Gà Hà Nội",
    description: "Phở ngon hà nội trứ danh gia truyền",
    price: 45000,
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    image: ["assets/images/pho2.jpg"],
    colors: [const Color(0xFFF6625E), const Color(0xFF936D88), Colors.white],
    title: "Phở Bò Hà Nội",
    description: "Phở ngon hà nội trứ danh gia truyền",
    price: 75000,
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    image: ["assets/images/mon1.jpg"],
    colors: [const Color(0xFFF6625E), const Color(0xFF936D88), Colors.white],
    title: "Bit tết bò",
    description: "Phở ngon hà nội trứ danh gia truyền",
    price: 129000,
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
];
