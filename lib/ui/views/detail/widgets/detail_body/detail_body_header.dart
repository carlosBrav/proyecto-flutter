import 'package:flutter/material.dart';

class DetailBodyHeader extends StatelessWidget {
  const DetailBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          child: const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(
                  child: Image(
                image: NetworkImage(
                    'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png'),
              ))),
        ));
  }
}
