import 'package:flutter/material.dart';

class ScreenTransaction extends StatefulWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  State<ScreenTransaction> createState() => _ScreenTransaction();
}

class _ScreenTransaction extends State<ScreenTransaction> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx,index){
      return Card(
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(
            radius: 50,
            child:Text("12\ndec"),
          ),
          title: Text("1000"),
          subtitle: Text("travel"),
        ),
      );
    },
        separatorBuilder: (ctx,index){
      return SizedBox(
        height: 10,
      );
        },
        itemCount: 10,
    );
  }
}
