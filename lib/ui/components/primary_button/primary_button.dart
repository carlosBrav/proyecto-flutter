import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, this.onTap, required this.titleButton, required this.fontSize})
      : super(key: key);
  final void Function()? onTap;
  final String titleButton;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 180,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(titleButton,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600)),
          ),
        ));
  }
}
