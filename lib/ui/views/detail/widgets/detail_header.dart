import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/views/home/home.dart';

class DetailHeader extends StatelessWidget {
const DetailHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               GestureDetector(
                onTap: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
                },
                child: const CircleAvatar(
                backgroundColor: Colors.black87,
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              )
              ),
              Container(
                  color: Colors.transparent,
                  width: 100,
                  child: const Text(
                    "Men's Shoes",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
              const CircleAvatar(
                  minRadius: 24,
                  backgroundColor: Colors.black87,
                  child: Icon(Icons.shopping_bag_outlined, color: Colors.white))
            ]);
  }
}