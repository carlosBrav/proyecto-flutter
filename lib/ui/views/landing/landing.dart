import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/theme/app_colors.dart';
import 'package:proyecto_curso_flutter/ui/views/landing/widgets/landing_body.dart';
import 'package:proyecto_curso_flutter/ui/views/landing/widgets/landing_header.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
             LandingHeader(),
             LandingBody()
          ]),
        ));
  }
}
