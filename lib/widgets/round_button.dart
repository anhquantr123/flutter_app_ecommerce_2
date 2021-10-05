import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final double width;
  final Function() ontap;
  const RoundButton(
      {Key? key, required this.text, required this.width, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 16),
        // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(28)),
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: textSizeBody3,
                fontWeight: fontBold,
                color: textColorWhite)),
      ),
    );
  }
}
