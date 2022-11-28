import 'package:flutter/material.dart';

class ItemMini extends StatelessWidget {
  const ItemMini({Key? key, required this.url}) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 65,
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black87,
        ),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
                child: Image(
              image: NetworkImage(
                  url),
            ))));
  }
}
