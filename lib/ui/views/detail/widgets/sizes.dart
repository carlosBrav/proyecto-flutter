import 'package:flutter/material.dart';

class Sizes extends StatelessWidget {
  const Sizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CircleAvatar(radius: 25, child: Text('38')),
        CircleAvatar(radius: 25, child: Text('39')),
        CircleAvatar(radius: 25, child: Text('40')),
        CircleAvatar(radius: 25, child: Text('41')),
        CircleAvatar(radius: 25, child: Text('42')),
        CircleAvatar(
          radius: 25,
          child: Text('43'),
        )
      ],
    );
  }
}
