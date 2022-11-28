import 'package:flutter/material.dart';

class TitleBetween extends StatelessWidget {
  const TitleBetween(
      {Key? key, required this.titleLeft, required this.titleRight})
      : super(key: key);

  final String titleLeft;
  final String titleRight;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          titleLeft,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(titleRight, style: const TextStyle(color: Colors.lightBlue))
      ],
    );
  }
}
