import 'package:flutter/material.dart';
import 'package:money_manager/Screen/category/expense.dart';
import 'package:money_manager/Screen/category/income.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _SreenCategoryState();
}

class _SreenCategoryState extends State<ScreenCategory>with SingleTickerProviderStateMixin {
 late TabController _tabController;
 @override
  void initState() {
   _tabController=TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
            tabs: [
          Tab(text: "INCOME",),
          Tab(text: "EXPENSE",),
        ]),Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              IncomeList(),
              ExpenseList(),

            ],
          ),
        )

      ],
    );
  }
}
