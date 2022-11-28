import 'package:flutter/material.dart';

class TitlePrice extends StatelessWidget {
  const TitlePrice(
      {Key? key,
      required this.price,
      required this.sizeIcon,
      required this.fontSize})
      : super(key: key);
  final String price;
  final double sizeIcon;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Icon(
          Icons.attach_money,
          color: Colors.white,
          size: sizeIcon,
        ),
        Text(price,
            style: TextStyle(
                color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w600))
      ],
    );
  }
}
