import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/components/title-common/title_common.dart';
import 'package:proyecto_curso_flutter/ui/components/title/title_bc.dart';
import 'package:proyecto_curso_flutter/ui/components/title_between/title_between.dart';
import 'package:proyecto_curso_flutter/ui/components/title_price/title_price.dart';

class Arrivals extends StatefulWidget {
  const Arrivals({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ArrivalsState createState() => _ArrivalsState();
}

class _ArrivalsState extends State<Arrivals> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            color: Colors.transparent,
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const TitleBetween(titleLeft: "New Arrivals", titleRight: "See all"),
                const SizedBox(height: 20),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(22, 31, 40, 255),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, top: 10, left: 20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                   TitleBC(title:"BEST CHOICE"),
                                   SizedBox(height: 5),
                                   TitleCommon(title: "Nike Air Jordan", size: 25),
                                   SizedBox(height: 12),
                                   TitlePrice(price: "493.00", fontSize: 15, sizeIcon: 16,)
                                ],
                              )),
                          Container(
                            width: 100,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.freepnglogos.com/uploads/shoes-png/shoes-png-transparent-clipart-icons-and-png-38.png'),
                              fit: BoxFit.contain))
                            )
                            
                        ],
                      ),
                    ))
              ],
            )));
  }
}
