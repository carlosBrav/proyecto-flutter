
import 'package:flutter/material.dart';

class TitleBC extends StatelessWidget {
  const TitleBC({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(color: Colors.lightBlue, fontSize: 14));
  }
}
