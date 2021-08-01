import "package:flutter/material.dart";
import 'package:flutter_app/Pages/PageTwoRoute.dart';

class GotoNewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Goto New Page", style: TextStyle(fontSize: 25),),
        onPressed: (){
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context)=> PageTwoRoute())
           );
        },
      ),
    );
  }
}
