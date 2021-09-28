import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce_2/constants/constants_style.dart';

class RoundTextField extends StatelessWidget {
  final String label, hintext;
  final ValueChanged valueChange;
  final Widget icons;
  final bool password;
  const RoundTextField(
      {Key? key,
      required this.label,
      required this.hintext,
      required this.icons,
      this.password = false,
      required this.valueChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
        width: size.width,
        child: TextFormField(
            obscureText: password,
            onChanged: valueChange,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                label: Text(label),
                hintText: hintext,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: blackColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: blackColor),
                ),
                suffixIcon: icons)));
  }
}
