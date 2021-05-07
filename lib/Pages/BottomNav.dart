import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Colors.orange[900],
      // fixedColor: Colors.indigo,
      // type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label:"Test1"),
        BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label:"Test2"),
        // BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label:"Test"),
        // BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label:"Test"),
        // BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label:"Test"),
        // BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label:"Test")
      ],
      onTap: (index){
        print("The index is $index");
      },
    );
  }
}
