import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class ProductImage extends StatefulWidget {
  final dynamic product;
  const ProductImage({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(
          height: widget.size.width * 0.8,
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.product.image[_currentIndex].toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.image.length,
                (index) => buildSmallPreview(index))
          ],
        )
      ]),
    );
  }

  Widget buildSmallPreview(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: (_currentIndex == index) ? primaryColor : whiteColor,
              width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            widget.product.image[index].toString(),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
