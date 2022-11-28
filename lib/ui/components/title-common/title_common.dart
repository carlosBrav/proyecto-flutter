import 'package:flutter/material.dart';

class TitleCommon extends StatelessWidget {
  const TitleCommon({Key? key, required this.title, required this.size})
      : super(key: key);

  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            color: Colors.white, fontSize: size, fontWeight: FontWeight.w600));
  }
}
