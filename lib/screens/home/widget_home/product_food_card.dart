import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';
import 'package:flutter_app_ecommerce_2/model/product_food.dart';

class ProductFoodCard extends StatelessWidget {
  final Product product;
  final GestureTapCallback press;
  const ProductFoodCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
          width: 140,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: blackColor.withOpacity(0.1),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      product.image[0].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  product.title,
                  maxLines: 2,
                  style: const TextStyle(color: textColorBlack, fontSize: 18),
                ),
              ),
              Text(
                "${product.price.toString()} VNĐ",
                maxLines: 2,
                style: const TextStyle(
                  color: primaryColor,
                  fontWeight: fontBold,
                  fontSize: textSizeBody2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
