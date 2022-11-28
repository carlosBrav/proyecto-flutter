import 'package:flutter/material.dart';

class LandingDot extends StatelessWidget {
const LandingDot({ Key? key, required this.bottom, required this.right}) : super(key: key);
final double bottom;
final double right;
  @override
  Widget build(BuildContext context){
    return Positioned(
              bottom: bottom,
              right: right,
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ));
  }
}