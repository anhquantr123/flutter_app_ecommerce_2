import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: const <Widget>[
            SizedBox(height: 10),
            Text(
              "Welcome ",
              style:
                  TextStyle(fontSize: textSizeHeading4, fontWeight: fontBold),
            ),
            Text(
              "Sign in with your email and password ",
              style: TextStyle(
                fontSize: textSizeBody4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
