import 'package:flutter/material.dart';

import 'option.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                 Option(
                    url:
                        'https://i.pinimg.com/236x/78/68/a9/7868a9ca0823ab35d5b99f832078864b---cent-athletic-clothes.jpg'),
                 Option(
                    url:
                        'https://thumbs.dreamstime.com/b/algeria-map-collection-253453222.jpg'),
                 Option(
                    url:
                        'https://i.pinimg.com/originals/1b/e7/4b/1be74b1feb2335ef6bdbc88ac29aba8a.jpg'),
                 Option(
                    url:
                        'https://static.vecteezy.com/system/resources/previews/010/994/278/original/puma-logo-white-symbol-with-name-clothes-design-icon-abstract-football-illustration-with-black-background-free-vector.jpg'),
                 Option(
                    url:
                        'https://1000logos.net/wp-content/uploads/2016/12/converse-symbol.jpg'),
              ]),
        ));
  }
}
