import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter/ui/theme/app_colors.dart';
import 'package:proyecto_curso_flutter/ui/views/home/widgets/arrivals.dart';
import 'package:proyecto_curso_flutter/ui/views/home/widgets/header.dart';
import 'package:proyecto_curso_flutter/ui/views/home/widgets/input_search.dart';
import 'package:proyecto_curso_flutter/ui/views/home/widgets/options.dart';
import 'widgets/items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _activeIndex = 2;

  void _onTap(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Header(),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const InputSearch(),
              const Options(),
              const SizedBox(
                height: 10,
              ),
              const Items(),
              const Arrivals()
            ])),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house_siding, color: Colors.grey), label: '',activeIcon: Icon(Icons.house_siding, color: Colors.lightBlue)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.grey), label: '',activeIcon: Icon(Icons.favorite_border, color: Colors.lightBlue)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, color: Colors.grey), label: '',activeIcon: Icon(Icons.shopping_bag, color: Colors.lightBlue)),
          BottomNavigationBarItem(icon: Icon(Icons.notification_important, color: Colors.grey), label: '',activeIcon: Icon(Icons.notification_important, color: Colors.lightBlue)),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey), label: '',activeIcon: Icon(Icons.person, color: Colors.lightBlue)),
        ],
        currentIndex: _activeIndex,
        onTap: _onTap,)
    );
  }
}