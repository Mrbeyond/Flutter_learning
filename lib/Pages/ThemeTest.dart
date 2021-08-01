import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class ThemeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pacer("The Themes test"),
        Pacer("Unique ThemeData"),
        UniqueTheme(),
        Pacer("Extend Parent Theme"),
        ExtendParent(),
      ],
    );
  }
}
class UniqueTheme extends StatelessWidget {
TextStyle _textStyle = TextStyle( color: Colors.redAccent, backgroundColor: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        accentColor: Colors.teal,
        primaryColor: Colors.red,
        buttonColor: Colors.indigoAccent,
        backgroundColor: Colors.black12,
        textTheme: TextTheme(
          button: _textStyle,
          bodyText1: _textStyle,
          caption: _textStyle,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.red,
          hoverColor: Colors.black,
        )


      ),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Text("The text one in unique theme"),
          TextField(
            controller: TextEditingController(),
            onChanged: (val){
              print(val);
            },
          ),
          Checkbox(value: true, onChanged: (val){ print(val);}),
          ElevatedButton(
            onPressed: (){
              print("pressed from unique theme");
            },
            child: Text("The button inside unique theme"),
          )
        ],
      )
    );
  }
}
class ExtendParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(data: Theme.of(context).copyWith(
      accentColor: Colors.deepPurpleAccent,
      primaryColor: Colors.pink,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("The text one in extend with \n Theme.of(context).copyWith(themes)"),
        TextField(
          controller: TextEditingController(),
          onChanged: (val){
            print(val);
          },
        ),
        Checkbox(value: true, onChanged: (val){ print(val);}),
        ElevatedButton(
          onPressed: (){
            print("pressed from extend parent theme");
          },
          child: Text("The button inside extend parent theme"),
        )
      ],
    )


    );
  }
}



