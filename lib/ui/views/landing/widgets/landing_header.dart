import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/views/landing/widgets/landing_dot.dart';

class LandingHeader extends StatefulWidget {
  const LandingHeader({Key? key}) : super(key: key);

  @override
  _LandingHeaderState createState() => _LandingHeaderState();
}

class _LandingHeaderState extends State<LandingHeader> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png'),
                    fit: BoxFit.contain)),
          ),
          const LandingDot(bottom: 150, right: 5),
          LandingDot(bottom: 40, right: MediaQuery.of(context).size.width * 0.8)
        ]));
  }
}
