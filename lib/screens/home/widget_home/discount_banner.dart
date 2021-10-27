import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,
        //height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF4A3298)),
        child: RichText(
          text: const TextSpan(children: [
            TextSpan(text: "khuyến mãi đặc biệt mùa hè\n"),
            TextSpan(
                text: "Hoàn Tiền Lên Đến 25%",
                style: TextStyle(fontWeight: fontBold, fontSize: textSizeBody1))
          ]),
        ));
  }
}
