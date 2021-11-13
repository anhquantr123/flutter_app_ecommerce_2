import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/screens/detail/widget_detail/product_image.dart';
import 'package:flutter_app_ecommerce_2/screens/detail/widget_detail/top_round_container.dart';

class BodyDetailScreen extends StatefulWidget {
  final dynamic product;
  const BodyDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  _BodyDetailScreenState createState() => _BodyDetailScreenState();
}

class _BodyDetailScreenState extends State<BodyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        children: [
          ProductImage(size: size, product: widget.product),
          const SizedBox(height: 10),
          TopRoundContainer(
            color: whiteColor,
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
