import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/components/add_button/add_button.dart';
import 'package:proyecto_curso_flutter/ui/components/title-common/title_common.dart';
import 'package:proyecto_curso_flutter/ui/components/title/title_bc.dart';
import 'package:proyecto_curso_flutter/ui/components/title_price/title_price.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/detail.dart';

class Item extends StatefulWidget {
  const Item(
      {Key? key, required this.title, required this.price, required this.url})
      : super(key: key);
  final String title;
  final String price;
  final String url;
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 230,
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(22, 31, 40, 255),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: Column(children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detail(),
                ),
              );
            },
            child: Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.url), fit: BoxFit.contain)),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TitleBC(title: 'BEST SELLER'),
                            const SizedBox(height: 5),
                            TitleCommon(title: widget.title, size: 15.0),
                            const SizedBox(height: 12),
                            TitlePrice(price: widget.price, fontSize: 15, sizeIcon: 16,)
                          ],
                        ),
                        const AddButton()
                      ],
                    ))))
      ]),
    );
  }
}
