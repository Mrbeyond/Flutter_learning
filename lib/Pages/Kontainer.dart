import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Kontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.blueAccent,
        ),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(color: Colors.red[500], offset: new Offset(6.0, 6.0),),
        ],
      ),
      height: 200,
      width: 200,
      margin: EdgeInsets.only(top: 20),
      // alignment: Alignment.bottomRight,
      // transform: Matrix4.rotationZ(9),
      child: Text("Inside the container"),
    );
  }
}
