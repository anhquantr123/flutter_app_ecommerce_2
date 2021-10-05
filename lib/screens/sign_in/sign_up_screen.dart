import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/screen_export.dart';
import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                "Sign Up ",
                style:
                    TextStyle(fontSize: textSizeHeading4, fontWeight: fontBold),
              ),
              Text(
                "Sign up with your email and password ",
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
              RoundTextField(
                  label: " Comfirm Password",
                  hintext: "Enter your password comfirm ",
                  password: true,
                  icons: const Icon(
                    Icons.lock,
                    color: blackColor,
                  ),
                  valueChange: (value) => {print(value)}),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: RoundButton(
                    text: "Continue",
                    width: size.width * 0.6,
                    ontap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OTPScreen()))
                        }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Đã có tài khoản?"),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      " Đăng Nhập.",
                      style:
                          TextStyle(color: primaryColor, fontWeight: fontBold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
