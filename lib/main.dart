import "package:flutter/material.dart";
import 'package:flutter_app/Pages/BottomNav.dart';
import 'package:flutter_app/Pages/Buton.dart';
import 'package:flutter_app/Pages/Crypto.dart';
import 'package:flutter_app/Pages/Dialogs.dart';
import 'package:flutter_app/Pages/Drawer.dart';
import 'package:flutter_app/Pages/DropDownMenu.dart';
import 'package:flutter_app/Pages/FloatingButton.dart';
import 'package:flutter_app/Pages/Formz.dart';
import 'package:flutter_app/Pages/Images.dart';
import 'package:flutter_app/Pages/Input.dart';
import 'package:flutter_app/Pages/Kontainer.dart';
import 'package:flutter_app/Pages/PersistenceBottom.dart';
import 'package:flutter_app/Pages/PopUp.dart';
import 'package:flutter_app/Pages/SpannedText.dart';
import 'package:flutter_app/Pages/Stackers.dart';

void main() {
  runApp(FlutterApp());
  print("Hello world!!");
}

class FlutterApp extends StatefulWidget {
  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Flutter App"),
          centerTitle: true,
          elevation: 0,
          actions: [
            TextButton(onPressed: null, child: Icon(Icons.badge)),
            PopUp(),
          ],
        ),
        drawer: AppDrawer(),
        endDrawer: AppDrawer(),
        floatingActionButton: FloatingButton(),
        bottomNavigationBar: BottomNav(),
        persistentFooterButtons: [ PersistenceBottom() ],
        body:Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: ListView(
            children: [
              DropDownMenu(),
              Crypto(),
              Kontainer(),
              SPannedText(),
              Input(),
              Buton(),
              Stackers(),
              Formz(),
              Dialogs(),
              Images(),


            ],
          ),
        )
      ),
      theme: ThemeData.light(),
    );
  }
}
