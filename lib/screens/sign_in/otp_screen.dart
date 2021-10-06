import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_app_ecommerce_2/widgets/round_button.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late FocusNode pin1;
  late FocusNode pin2;
  late FocusNode pin3;
  late FocusNode pin4;
  late FocusNode pin5;
  late FocusNode pin6;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin1 = FocusNode();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
    pin5 = FocusNode();
    pin6 = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin1 = FocusNode();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
    pin5 = FocusNode();
    pin6 = FocusNode();
  }

  void nextInputPin(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
      print(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: whiteColor,
            elevation: 0,
            title: const Text("OTP Verification",
                style: TextStyle(color: blackColor)),
            leading: IconButton(
                onPressed: () => {Navigator.pop(context)},
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: blackColor))),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
                  child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("Nhập mã xác thực",
                  style: TextStyle(
                      fontSize: textSizeHeading4, fontWeight: fontBold)),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                      "Chúng tôi vừa gửi một mã xác nhận đến gmail của bạn đã đăng kí",
                      textAlign: TextAlign.center)),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ItemOtp(
                      focusNode: pin1,
                      autoFocus: true,
                      value: (value) {
                        nextInputPin(value, pin2);
                      },
                    ),
                    ItemOtp(
                      focusNode: pin2,
                      value: (value) {
                        nextInputPin(value, pin3);
                      },
                    ),
                    ItemOtp(
                      focusNode: pin3,
                      value: (value) {
                        nextInputPin(value, pin4);
                      },
                    ),
                    ItemOtp(
                      focusNode: pin4,
                      value: (value) {
                        nextInputPin(value, pin5);
                      },
                    ),
                    ItemOtp(
                      focusNode: pin5,
                      value: (value) {
                        nextInputPin(value, pin6);
                      },
                    ),
                    ItemOtp(
                      focusNode: pin6,
                      value: (value) {
                        pin6.unfocus();
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Bạn chưa nhận được mã? "),
                      Text(
                        "Gửi lại ",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  )),
              const SizedBox(height: 20),
              RoundButton(
                  text: "Xác Nhận",
                  width: MediaQuery.of(context).size.width * 0.7,
                  ontap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  })
            ],
          ))),
        ));
  }
}

class ItemOtp extends StatelessWidget {
  final ValueChanged value;
  final bool autoFocus;
  late FocusNode focusNode;
  ItemOtp(
      {Key? key,
      required this.value,
      this.autoFocus = false,
      required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(color: blackColor),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: TextField(
          focusNode: focusNode,
          autofocus: autoFocus,
          onChanged: value,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(border: InputBorder.none),
          style: const TextStyle(fontSize: textSizeBody1)),
    );
  }
}
