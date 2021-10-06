import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/screen_export.dart';
import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _checkBox = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              "Đăng Nhập",
              style:
                  TextStyle(fontSize: textSizeHeading4, fontWeight: fontBold),
            ),
            Text(
              "Sử dụng email và mật khẩu của bạn để tiếp tục",
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Checkbox(
                      value: _checkBox,
                      onChanged: (value) => setState(() {
                            _checkBox = value!;
                          })),
                  Text("Giữ trạng thái đăng nhập")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RoundButton(
                  text: "Tiếp tục",
                  width: size.width * 0.6,
                  ontap: () => {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()))
                      }),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: const Text("Quên mật khẩu?"),
                )),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bạn chưa có tài khoản?"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: const Text(
                    " Đăng kí.",
                    style: TextStyle(color: primaryColor, fontWeight: fontBold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
