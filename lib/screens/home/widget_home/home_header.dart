import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(size: size),
          RoundButtonIcon(
              size: size,
              numberOfItem: 1,
              icon: const Icon(Icons.shopping_cart_rounded),
              press: () {}),
          RoundButtonIcon(
            size: size,
            icon: const Icon(Icons.notifications),
            press: () {},
            numberOfItem: 5,
          )
        ],
      ),
    );
  }
}
