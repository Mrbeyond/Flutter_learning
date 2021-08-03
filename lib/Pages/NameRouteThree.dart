import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';
import 'package:flutter_app/Pages/Utility.dart';

class NamedRouteThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
        elevation: 5.0,
      ),
      body: Container(
        height: Utility(context: context).safeHeight(),
        width: Utility(context: context).safeWidth,
        color: Colors.indigoAccent[500],
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Named route Three", style: TextStyle(fontSize: 30),),
                Pacer(""),
                TextButton.icon(
                    onPressed: (){
                      //
                    },
                    icon: Icon(Icons.forward),
                    label: Text("Goto page Three", style: TextStyle(fontSize: 20),)
                )
              ]
          ),
        ),
      ),
    );
  }
}
