import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class ToolTipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30, bottom: 30),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pacer("Tooltip Section"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Tooltip(
                  waitDuration: Duration( seconds: 1),
                  showDuration: Duration( seconds: 2),
                  padding: EdgeInsets.all(10),
                  height: 40,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  message: "My Account",
                  child: TextButton(
                    onPressed: null,
                    child: Icon(
                      Icons.account_box,
                      size:100
                    ),
                  )
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Tooltip(
                  message: "My Account 2",
                  child: Icon(
                    Icons.account_box,
                    size:100
                  ),
                ),
              )
            ],
          )

          
        ],
      ),
    );
  }
}
