import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class CheckBoxes extends StatefulWidget {
  @override
  _CheckBoxesState createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool firstValue = false;
  bool secondValue = false;
  bool tileValue1 = false;
  bool tileValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      child: Column(
        children: [
          Pacer("The Simple Checkbox section"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Checkbox(
                onChanged: (value){
                  setState(() {
                    firstValue = value;
                  });
                },
                value: firstValue,
              ),
              Checkbox(
                onChanged: (value){
                  setState(() {
                    secondValue = value;
                  });
                },
                value: secondValue,
              ),

            ]

          ),
          Text(
            "$firstValue is the first checkbox value",
            style: TextStyle(
              fontSize: 16 ,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "$secondValue is the second checkbox value",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:20),
              child: Pacer("The CheckboxListTitle section")
          ),

          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                CheckboxListTile(
                  value: tileValue1,
                  secondary: Icon(Icons.alarm),
                  title: Text("Wake me up by 12:00 AM"),
                  subtitle: Text(" ${tileValue1?'Enabled':'Disabled'}"),
                  onChanged: (bool value){
                    setState(() {
                      tileValue1 = value;
                    });
                  }
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: tileValue2,
                  secondary: Icon(Icons.home),
                  title: Text("Are you going home?"),
                  subtitle: Text(" ${tileValue2?'Yes':'No'}"),
                  onChanged: (bool value){
                    setState(() {
                      tileValue2 = value;
                    });
                  }
                )


              ],
            ),
          )

        ],
      ),

    );
  }
}
