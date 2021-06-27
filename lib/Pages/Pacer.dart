import "package:flutter/material.dart";

class Pacer extends StatelessWidget{
  final String title;
  Pacer(this.title);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.red
        ),
      ),
    );
  }
}