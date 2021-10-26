import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class RoundButtonIcon extends StatelessWidget {
  const RoundButtonIcon(
      {Key? key,
      required this.size,
      required this.numberOfItem,
      required this.icon,
      required this.press})
      : super(key: key);

  final Size size;
  final GestureTapCallback press;
  final int numberOfItem;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: blackColor.withOpacity(0.2), shape: BoxShape.circle),
            child: icon,
          ),
          if (numberOfItem > 0)
            Positioned(
              right: 0,
              child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: whiteColor,
                        width: 1,
                      ),
                      color: Colors.red,
                      shape: BoxShape.circle),
                  child: Center(
                    child: Text("$numberOfItem",
                        style: TextStyle(
                            color: whiteColor,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 35)),
                  )),
            )
        ],
      ),
    );
  }
}
