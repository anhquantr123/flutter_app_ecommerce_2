import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class HomeScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          HomeHeader(size: size),
          const SizedBox(
            height: 10,
          ),
          const DiscountBanner(),
          const SizedBox(
            height: 10,
          ),
          const Categories(),
          SectionTitle(
            text: "Sản Phẩm Đặt Nhiều",
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  textTitle: "Pizaa Hải Sản",
                  size: size,
                  image: "assets/images/anh1.jpg",
                  textBody: "Giảm giá 50% mỗi thứ 4 hàng tuần",
                  press: () {},
                ),
                SpecialOfferCard(
                  textTitle: "Hamburger bò ",
                  size: size,
                  image: "assets/images/hamburger.jpg",
                  textBody: "Tặng 1 suất nước ngọt miễn phí",
                  press: () {},
                ),
              ],
            ),
          ),
          SectionTitle(text: "Món ngon hôm nay ", press: () {})
        ],
      ))),
    );
  }
}
