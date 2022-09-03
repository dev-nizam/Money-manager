import 'package:flutter/material.dart';
import 'package:money_manager/Screen/category/Screen_Category.dart';
import 'package:money_manager/Screen/home/widgets/bottomnavigator.dart';
import 'package:money_manager/Screen/transactions/Screen_transactions.dart';

int currentIndex = 0;

class ScreenHome extends StatefulWidget {
    const ScreenHome({Key? key}) : super(key: key);
    static ValueNotifier<int>selectedindexNotifier=ValueNotifier(0);

  @override
  State<ScreenHome> createState() => _SreenHomeState();
}

class _SreenHomeState extends State<ScreenHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("MONEY MANAGER"),
        centerTitle: true,
      ),
      bottomNavigationBar:BottomNavigationBar(
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
          ]),
       body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (currentIndex == 0) {
          print("add Transaction");
        } else {
          print("add Categor");
        }
      } ,child: Icon(Icons.add),),
    );;
  }
  final pages =[
    ScreenTransaction(),
    ScreenCategory()
  ];
}
