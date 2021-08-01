import 'package:custom_switch/custom_switch.dart';
import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class Switches extends StatefulWidget {
  @override
  _SwitchesState createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  bool _states, _custom;

  @override
  void initState() {
    super.initState();
    _states = true;
    _custom = false;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pacer("The switch"),
        Container(
          // margin: EdgeInsets.only(top:20, bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
              value: _states,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.orange,
              activeTrackColor: Colors.blue,
              inactiveThumbColor: Colors.red,
              onChanged: (bool val){
                setState(() {
                  _states = !_states;
                });
                print(val);
              },
            ),
          ]
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top:0),
          child: Text(
            "${_states? 'The switch is on':'The switch is off'}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        Pacer("Custom switch"),
        CustomSwitch(
          value: _custom,
          activeColor: Colors.blue,
          onChanged: (val){
            setState(() {
              print(val);
              _custom = val;
            });
          },
        )


      ],
    );
  }
}
