import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/theme/app_colors.dart';

class InputSearch extends StatefulWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  _InputSearchState createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.secondaryColor),
      child: const TextField(
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Looking for shoes",
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            )),
      ),
    );
  }
}
