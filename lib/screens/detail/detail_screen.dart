import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/screens/detail/widget_detail/body.dart';

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
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  Text(widget.product.rating.toString(),
                      style: const TextStyle(
                          color: blackColor, fontWeight: fontBold)),
                  const Icon(Icons.star, color: colorRating, size: 20),
                ],
              ),
            )
          ],
        ),
        body: SafeArea(
          child: BodyDetailScreen(
            product: widget.product,
          ),
        ));
  }
}
