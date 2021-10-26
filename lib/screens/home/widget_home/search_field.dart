import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.6,
      height: 40,
      decoration: BoxDecoration(
          color: blackColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: const TextField(
          autofocus: false,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_rounded),
              border: InputBorder.none,
              hintText: "Tìm kiếm...")),
    );
  }
}
