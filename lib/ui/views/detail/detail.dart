import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/theme/app_colors.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/widgets/detail_body/detail_body_description.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/widgets/detail_body/detail_body_header.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/widgets/detail_header.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.detailprimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.detailprimaryColor,
        automaticallyImplyLeading: false,
        title: const DetailHeader(),
      ),
      body: Container(
        color: AppColors.detailprimaryColor,
        child: Column(children: const [
          DetailBodyHeader(),
          DetailBodyDescription()
        ]),
      ),
    );
  }
}
