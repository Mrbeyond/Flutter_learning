import 'package:flutter/material.dart';

class Stackers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          Stack(
            fit: StackFit.passthrough,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blueAccent,
                child: Text("Parent stack"),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                child: Text("the child stack", style: TextStyle(fontSize: 30, color: Colors.white),),
                color: Colors.redAccent,
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Text("the child stack", style: TextStyle(fontSize: 30),),
                  color: Colors.green[200],
                ),
              ),

            ],
          ),
          SizedBox(height: 30,),
          IndexedStack(
            index: 2,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blueAccent,
                child: Text("Indexed stack 1", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              Container(
                height: 300,
                width: 300,
                child: Text("Indexed stack 2", style: TextStyle(fontSize: 30, color: Colors.white)),
                color: Colors.indigo[500],
              ),
              Container(
                height: 300,
                width: 300,
                child: Text("Indexed stack 3", style: TextStyle(fontSize: 30, color: Colors.white),),
                color: Colors.yellow[500],
              ),
            ],
          )
        ],
      ),
    );
  }
}
