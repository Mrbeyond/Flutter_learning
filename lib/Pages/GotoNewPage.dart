import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_app/Pages/NamedRouteTwo.dart';
import 'package:flutter_app/Pages/Pacer.dart';
import 'package:flutter_app/Pages/PageTwoRoute.dart';

class GotoNewPage extends StatelessWidget {
  BuildContext incomingContext;
  GotoNewPage(this.incomingContext);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("Goto New Page using MaterialPageRoute (Navigator.push)", style: TextStyle(fontSize: 18),),
            onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context)=> PageTwoRoute())
               );
            },
          ),
          Pacer(""),
          ElevatedButton(
            child: Text("Goto New Page using NamedRoute", style: TextStyle(fontSize: 18),),
            onPressed: (){
              Navigator.of(incomingContext).pushNamed('/second');
            },
          )
        ],
      ),
    );
  }
}
