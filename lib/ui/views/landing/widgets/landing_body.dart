import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/components/primary_button/primary_button.dart';
import 'package:proyecto_curso_flutter/ui/views/home/home.dart';

class LandingBody extends StatefulWidget {
  const LandingBody({Key? key}) : super(key: key);

  @override
  _LandingBodyState createState() => _LandingBodyState();
}

class _LandingBodyState extends State<LandingBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Start Journey",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("With Nike",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Smart, Gorgeous & Fashionable Collection",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.transparent,
                            height: 30,
                            width: 100,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width: 30,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue.shade300,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50.0)))),
                                  Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)))),
                                  Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)))),
                                ]),
                          ),
                           PrimaryButton(titleButton: "Get Started", fontSize: 15.0, onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Home(),
                                ),
                              );
                            },)
                          
                        ],
                      )))
            ],
          ),
        ));
  }
}
