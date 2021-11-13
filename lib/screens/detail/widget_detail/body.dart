import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

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
      child: Column(children: [
        Center(
          child: SizedBox(
            height: size.width * 0.8,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                widget.product.image[0].toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primaryColor, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              widget.product.image[0].toString(),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    );
  }
}
