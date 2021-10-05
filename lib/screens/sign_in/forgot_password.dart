import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: const Text("Quên Mật Khẩu",
            style: TextStyle(color: textColorBlack)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: blackColor,
            )),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text("Nhập Email của bạn để lấy lại mật khẩu")),
            RoundTextField(
                label: "Email",
                hintext: "Enter your email ",
                icons: const Icon(Icons.email_rounded),
                valueChange: (value) {}),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: RoundButton(
                  text: "Get code", width: size.width * 0.75, ontap: () {}),
            )
          ],
        )),
      ),
    );
  }
}
