import 'dart:async';
import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class Progression extends StatefulWidget {
  @override
  _ProgressionState createState() => _ProgressionState();
}

class _ProgressionState extends State<Progression> {
  bool loading;
  bool dLoading;
  double dValue;
  double cValue;
  bool cLoading;

  ///Linear Determinate value determinant
  void timeProgress(){
    const oneSec =  Duration( seconds: 1);
    new Timer.periodic(oneSec, (Timer timer){
      setState(() {
        dValue += 0.1;
        if(dValue.toStringAsFixed(1) == "1.0"){
          dLoading = false;
          dValue = 0.0;
          timer.cancel();
          return;
        }
      });
    });
  }

  ///Circular Determinate value determinant
  void cTimeProgress(){
    const oneSec =  Duration( seconds: 1);
    new Timer.periodic(oneSec, (Timer timer){
      setState(() {
        cValue += 0.1;
        if(cValue.toStringAsFixed(1) == "1.0"){
          cLoading = false;
          cValue = 0.0;
          timer.cancel();
          return;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loading = false;
    dValue = 0.0;
    dLoading = false;
    cLoading = false;
    cValue = 0.0;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "Indeterminate progress bar",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child:loading?
              LinearProgressIndicator():
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                "Press download button below to download",
                style: TextStyle(
                  color: Colors.lime,
                  fontSize: 20
                ),
            ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: TextButton(
              child: Icon(Icons.cloud_download, size: 50,),
              onPressed: (){
                setState(() {
                  loading = !loading;
                });
              },
            ),
          ),

          // Beginning of Determinate ProgressBar
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "Determinate progress bar",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: dLoading?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                LinearProgressIndicator(
                  value: dValue,
                  backgroundColor: Colors.red,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                ),
                Text("${(dValue * 100).round()} %")
              ]
            ):
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Press download button below to download",
                style: TextStyle(
                    color: Colors.lime,
                    fontSize: 20
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: TextButton(
              child: Icon(Icons.cloud_download, size: 50,),
              onPressed: (){
                setState(() {
                  dLoading = !dLoading;
                  timeProgress();
                });
              },
            ),
          ),

          //Circular Progress indicator section
          Pacer("Circular Progress Bar"),

          //Indeterminate follows
          Container(
            padding: EdgeInsets.only(left:5, right:5),
            margin: EdgeInsets.only(bottom:20),
            alignment: Alignment.center,
            child: Text(
              "Indeterminate Circular progress indicator",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              )
            )
          ),
          Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.deepOrange,
              strokeWidth: 8.0,
            ),
          ),

          //Determinate section follows
          Container(
              padding: EdgeInsets.only(left:5, right:5),
              margin: EdgeInsets.only(bottom:20),
              alignment: Alignment.center,
              child: Text(
                  "Determinate Circular progress indicator",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  )
              )
          ),

          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: cLoading?
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  CircularProgressIndicator(
                    value: cValue,
                    backgroundColor: Colors.red,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                    strokeWidth: 8,
                  ),
                  Text("${(cValue * 100).round()} %")
                ]
            ):
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Press download button below to download",
                style: TextStyle(
                    color: Colors.lime,
                    fontSize: 20
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.amber
              ),
              child: Icon(Icons.cloud_download, size: 50,),
              onPressed: (){
                setState(() {
                  cLoading = !cLoading;
                  cTimeProgress();
                });
              },
            ),
          ),


        ],
      ),
    );
  }
}
