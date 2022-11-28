import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ))
      ],
    );
  }
}
