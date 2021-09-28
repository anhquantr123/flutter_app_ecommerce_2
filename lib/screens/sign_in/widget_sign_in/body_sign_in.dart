import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              "Welcome ",
              style:
                  TextStyle(fontSize: textSizeHeading4, fontWeight: fontBold),
            ),
            Text(
              "Sign in with your email and password ",
              style: TextStyle(
                  fontSize: textSizeBody5,
                  color: textColorBlack.withOpacity(0.6)),
            ),
            const SizedBox(height: 30),
            RoundTextField(
                label: "Email",
                hintext: "Enter your email",
                icons: const Icon(
                  Icons.email_outlined,
                  color: blackColor,
                ),
                valueChange: (value) => {print(value)}),
            RoundTextField(
                label: "Password",
                hintext: "Enter your password",
                password: true,
                icons: const Icon(
                  Icons.lock,
                  color: blackColor,
                ),
                valueChange: (value) => {print(value)}),
            RoundButton(
                text: "Continue",
                width: size.width * 0.6,
                ontap: () => {print("you are click ")}),
          ],
        ),
      ),
    );
  }
}
