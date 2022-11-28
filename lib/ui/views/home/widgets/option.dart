import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  const Option({ Key? key, this.url = '' }) : super(key: key);
  final String url;
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 25,
      backgroundColor: const Color.fromARGB(22, 31, 40, 255),
      backgroundImage: NetworkImage(widget.url),

    );
  }
}