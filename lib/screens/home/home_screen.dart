import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/constants/widget_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.6,
                  height: 40,
                  decoration: BoxDecoration(
                      color: blackColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded),
                          border: InputBorder.none,
                          hintText: "Tìm kiếm...")),
                ),
                RoundButtonIcon(
                    size: size,
                    numberOfItem: 5,
                    icon: const Icon(Icons.shopping_cart_rounded),
                    press: () {}),
                RoundButtonIcon(
                  size: size,
                  icon: const Icon(Icons.notifications),
                  press: () {},
                  numberOfItem: 5,
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
