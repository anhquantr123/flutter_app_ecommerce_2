import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class TopRoundContainer extends StatelessWidget {
  final Color color;
  final Widget widget;
  const TopRoundContainer({
    Key? key,
    required this.color,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.3),
            offset: const Offset(0, -3),
            blurRadius: 5,
          ),
        ],
      ),
      child: widget,
    );
  }
}
