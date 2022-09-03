import 'package:flutter/material.dart';
import 'package:money_manager/Screen/home/Screen_home.dart';
int currentIndex = 0;
class moneyManagerBottomNavigation extends StatefulWidget {
  const moneyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  State<moneyManagerBottomNavigation> createState() => _moneyManagerBottomNavigationState();
}

class _moneyManagerBottomNavigationState extends State<moneyManagerBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedindexNotifier,
      builder: (BuildContext, int updatedIndex, Widget?_){
       return BottomNavigationBar(
         selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
           currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [BottomNavigationBarItem(icon: Icon(Icons.home),label:"transactions"
            ),
              BottomNavigationBarItem(icon: Icon(Icons.category),label: "categories"),
            ]);
      },
    );
  }
}
