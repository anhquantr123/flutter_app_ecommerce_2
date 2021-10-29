import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/flash.svg", "text": "Khuyến mãi"},
    {"icon": "assets/icons/fast_food.svg", "text": "Tráng miệng"},
    {"icon": "assets/icons/com.svg", "text": "Cơm"},
    {"icon": "assets/icons/mon_hap.svg", "text": "Món Khác"},
    {"icon": "assets/icons/drink.svg", "text": "Nước"}
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length, (index) => categoriesCardItem(index))
        ],
      ),
    );
  }

  Widget categoriesCardItem(int index) => GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: SizedBox(
          width: 50,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: (currentIndex == index)
                            ? categoriesColor
                            : categoriesColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(categories[index]['icon'])),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                categories[index]['text'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: (currentIndex == index)
                        ? textColorBlack
                        : textColorBlack.withOpacity(0.4),
                    fontWeight:
                        (currentIndex == index) ? fontBold : fontNormal),
              )
            ],
          ),
        ),
      );
}
