import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/components/title_between/title_between.dart';
import 'package:proyecto_curso_flutter/ui/constant/app_constant.dart';
import 'package:proyecto_curso_flutter/ui/views/home/widgets/item.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            color: Colors.transparent,
            height: 280,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const TitleBetween(titleLeft: "Popular Shoes", titleRight: "See all"),
                const SizedBox(height: 20),
                Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 20);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Item( 
                        title: item.title,
                        price: item.price,
                        url: item.url,
                      );
                    },
                  ),
                )
              ],
            )));
  }
}
