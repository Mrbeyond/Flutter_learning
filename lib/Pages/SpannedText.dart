import "package:flutter/material.dart";

class SPannedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.indigo,
        )
      ),
      margin: EdgeInsets.only(top:20),
      padding: EdgeInsets.all(20),
      color: Colors.grey[150],
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "FIrst side", style: TextStyle(color: Colors.indigo )),
            TextSpan(text: "FIrst side"),
            TextSpan(text: "FIrst side", style: TextStyle(color: Colors.teal[200] )),
            TextSpan(text: "FIrst side"),
          ]
        )
      ),
    );
  }
}
