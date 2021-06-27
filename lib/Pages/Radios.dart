import "package:flutter/material.dart";

class Radios extends StatefulWidget {
  @override
  _RadiosState createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  RadioValues radioValue = RadioValues.Beyond;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Choose one from to replace name the collection",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                fontSize: 25
              ),
            ),
          ),
          ListTile(
            title: Text(RadioValues.Beyond.toString().split('.').last),
            leading: Radio(
              value: RadioValues.Beyond,
              groupValue: radioValue,
              onChanged: (value){
                setState(() {
                  radioValue = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(RadioValues.Flutter.toString().split('.').last),
            leading: Radio(
              value: RadioValues.Flutter,
              groupValue: radioValue,
              onChanged: (value){
                setState(() {
                  radioValue = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(RadioValues.Mobile.toString().split('.').last),
            leading: Radio(
              value: RadioValues.Mobile,
              groupValue: radioValue,
              onChanged: (value){
                setState(() {
                  radioValue = value;
                });
              },
            ),
          ),

          ListTile(
            title: Text(
              "The trend is ${radioValue.toString().split('.').last}",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20,
              )
            ),
            trailing: Text("Wow! the popularity speaks"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0)
              )
            ),
          )

        ],
      ),
    );
  }
}

enum RadioValues{
  Beyond,
  Flutter,
  Mobile
}
