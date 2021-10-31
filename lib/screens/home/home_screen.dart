import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';
import 'package:flutter_app_ecommerce_2/model/product_food.dart';

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
          SectionTitle(text: "Món ngon hôm nay ", press: () {}),
          SizedBox(
            width: 140,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    decoration: BoxDecoration(
                      color: blackColor.withOpacity(0.1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        listProducts[0].image[0].toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    listProducts[0].title,
                    maxLines: 2,
                    style: const TextStyle(color: textColorBlack, fontSize: 20),
                  ),
                ),
                Text(
                  "${listProducts[0].price.toString()} VNĐ",
                  maxLines: 2,
                  style: const TextStyle(
                    color: primaryColor,
                    fontWeight: fontBold,
                    fontSize: textSizeBody2,
                  ),
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
