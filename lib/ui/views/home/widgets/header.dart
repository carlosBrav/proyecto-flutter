import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(50, 31, 40, 255),
                    child: Icon(Icons.grid_view_rounded, color: Colors.white),
                  ),
                  Container(
                      color: Colors.transparent,
                      width: 100,
                      child: Column(children: [
                        const Text(
                          'Store location',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 15,
                            ),
                            Text("Lima, Perú",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13))
                          ],
                        )
                      ])),
                  const CircleAvatar(
                      minRadius: 24,
                      backgroundColor: Color.fromARGB(50, 31, 40, 255),
                      child: Icon(Icons.shopping_bag_outlined,
                          color: Colors.white))
                ]),
          );
  }
}