import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class SplashImage extends StatelessWidget {
  final String image, text;
  final Size size;
  const SplashImage({
    Key? key,
    required this.text,
    required this.image,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          "Fast Food",
          style: TextStyle(
              fontSize: textSizeHeading1,
              fontWeight: fontBold,
              color: primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(text),
        const Spacer(
          flex: 2,
        ),
        Image.asset(image,
            height: size.height * 0.5, width: size.width, fit: BoxFit.cover)
      ],
    );
  }
}
