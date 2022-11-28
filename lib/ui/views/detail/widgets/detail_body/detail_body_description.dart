import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/components/primary_button/primary_button.dart';
import 'package:proyecto_curso_flutter/ui/components/title-common/title_common.dart';
import 'package:proyecto_curso_flutter/ui/components/title/title_bc.dart';
import 'package:proyecto_curso_flutter/ui/components/title_price/title_price.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/widgets/item_mini.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/widgets/size_type.dart';
import 'package:proyecto_curso_flutter/ui/views/detail/widgets/sizes.dart';

class DetailBodyDescription extends StatelessWidget {
  const DetailBodyDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Color.fromARGB(22, 31, 40, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleBC(title: "BESTE SELLER"),
                      const SizedBox(
                        height: 10,
                      ),
                      const TitleCommon(title: "Nike Air Jordan", size: 25),
                      const SizedBox(
                        height: 10,
                      ),
                      const TitlePrice(
                        price: "967.80",
                        fontSize: 15,
                        sizeIcon: 16,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike...",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w300)),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleCommon(title: "Gallery", size: 20.0),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              color: Colors.transparent,
                              width: 210,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  ItemMini(
                                      url:
                                          "https://www.freepnglogos.com/uploads/shoes-png/shoes-woocommerce-for-developers-woocommerce-22.png"),
                                  ItemMini(
                                      url:
                                          "https://www.freepnglogos.com/uploads/shoes-png/shoes-png-transparent-clipart-icons-and-png-38.png"),
                                  ItemMini(
                                      url:
                                          "https://www.freepnglogos.com/uploads/shoes-png/download-adidas-shoes-transparent-png-images-icons-18.png"),
                                ],
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const SizeType(),
                              const SizedBox(
                                height: 20,
                              ),
                              const Sizes()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TitleCommon(title: "Price", size: 15.0),
                            const SizedBox(
                              height: 10,
                            ),
                            const TitlePrice(
                              price: "967.80",
                              fontSize: 23,
                              sizeIcon: 20,
                            )
                          ]),
                          const PrimaryButton(titleButton: "Add to Cart", fontSize: 20.0)
                    ],
                  )
                ]),
          ),
        ));
  }
}
