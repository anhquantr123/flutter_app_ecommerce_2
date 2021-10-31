import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.size,
    required this.textTitle,
    required this.textBody,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String textTitle, textBody, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: 150,
          width: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      const Color(0xFF343434).withOpacity(0.5),
                      const Color(0xFF343434).withOpacity(0.15)
                    ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: RichText(
                  text: TextSpan(
                      style: const TextStyle(color: textColorWhite),
                      children: [
                        TextSpan(
                            text: textTitle,
                            style: const TextStyle(
                                fontSize: textSizeBody1, fontWeight: fontBold)),
                        TextSpan(
                            text: "\n$textBody",
                            style: const TextStyle(
                              fontSize: textSizeBody3,
                            )),
                      ]),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
