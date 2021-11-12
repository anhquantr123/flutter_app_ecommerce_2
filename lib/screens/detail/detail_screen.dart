import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/model/product_food.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final dynamic product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios, color: blackColor),
        ),
      ),
    );
  }
}
