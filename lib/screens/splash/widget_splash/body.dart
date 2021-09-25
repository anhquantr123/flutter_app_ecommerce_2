import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/screen_export.dart';
import 'package:flutter_app_ecommerce_2/screens/splash/widget_splash/widget_splash.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Map<String, String>> splashData = [
      {
        "text": "Chào mừng bạn đến với Fast Food",
        "image": "assets/images/anh3.jpg"
      },
      {
        "text": "Món ngon thượng hạng\nCảm nhận trên từng cảm xúc!",
        "image": "assets/images/anh1.jpg"
      },
      {"text": "Thực phẩm luôn tươi ngon", "image": "assets/images/anh2.jpg"}
    ];

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashImage(
                        text: splashData[index]['text'].toString(),
                        image: splashData[index]['image'].toString(),
                        size: size))),
            Expanded(
                child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      splashData.length, (index) => buildDot(index: index)),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primaryColor),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                      },
                      child: const Text("Tiếp tục",
                          style: TextStyle(
                              color: textColorWhite, fontSize: textSizeBody3),
                          textAlign: TextAlign.center)),
                ),
                const Spacer()
              ],
            ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        margin: const EdgeInsets.only(right: 10),
        height: 5,
        width: currentPage == index ? 20 : 5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: currentPage == index
                ? primaryColor
                : blackColor.withOpacity(0.15)));
  }
}
