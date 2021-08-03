import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';
import 'package:flutter_app/Pages/Utility.dart';

class NamedRouteTwo extends StatelessWidget {

  NamedRouteTwo({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        elevation: 5.0,
      ),
      body: Container(
        height: Utility(context: context).safeHeight(),
        width: Utility(context: context).safeWidth,
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text("Named route Two", style: TextStyle(fontSize: 30, color: Colors.white),),
              Pacer(""),
              TextButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/third');
                },
                icon: Icon(Icons.forward),
                label: Text("Goto page Three", style: TextStyle(fontSize: 20),)
              ),
              Pacer(""),
              TextButton.icon(
                  onPressed: (){
                    Navigator.pop(context, {"owner":"named_two"});
                  },
                  icon: Icon(Icons.arrow_back),
                  label: Text("Goto back to Home", style: TextStyle(fontSize: 20),)
              )
            ]
        ),
        ),
      ),
    );
  }
}
