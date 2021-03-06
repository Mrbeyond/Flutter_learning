import "package:flutter/material.dart";
import 'package:flutter_app/Pages/BottomNav.dart';
import 'package:flutter_app/Pages/Buton.dart';
import 'package:flutter_app/Pages/Cardz.dart';
import 'package:flutter_app/Pages/Chartses.dart';
import 'package:flutter_app/Pages/CheckBoxes.dart';
import 'package:flutter_app/Pages/Crypto.dart';
import 'package:flutter_app/Pages/Dialogs.dart';
import 'package:flutter_app/Pages/Drawer.dart';
import 'package:flutter_app/Pages/DropDownMenu.dart';
import 'package:flutter_app/Pages/FloatingButton.dart';
import 'package:flutter_app/Pages/Formz.dart';
import 'package:flutter_app/Pages/GotoNewPage.dart';
import 'package:flutter_app/Pages/Images.dart';
import 'package:flutter_app/Pages/Input.dart';
import 'package:flutter_app/Pages/Kontainer.dart';
import 'package:flutter_app/Pages/Listz.dart';
import 'package:flutter_app/Pages/NameRouteThree.dart';
import 'package:flutter_app/Pages/NamedRouteTwo.dart';
import 'package:flutter_app/Pages/PersistenceBottom.dart';
import 'package:flutter_app/Pages/PopUp.dart';
import 'package:flutter_app/Pages/Progression.dart';
import 'package:flutter_app/Pages/Radios.dart';
import 'package:flutter_app/Pages/Slidders.dart';
import 'package:flutter_app/Pages/Snackbarz.dart';
import 'package:flutter_app/Pages/SpannedText.dart';
import 'package:flutter_app/Pages/Stackers.dart';
import 'package:flutter_app/Pages/Switches.dart';
import 'package:flutter_app/Pages/TheAnimation.dart';
import 'package:flutter_app/Pages/TheCalendar.dart';
import 'package:flutter_app/Pages/TheTables.dart';
import 'package:flutter_app/Pages/ThemeTest.dart';
import 'package:flutter_app/Pages/ToolTipper.dart';
import 'package:flutter_app/Pages/Utility.dart';

void main() {
  runApp(EntryContainer());
  print("Hello world!!");
}

class EntryContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
         primarySwatch: Colors.deepOrange
       ),
      initialRoute: "/",
      routes: {
         "/": (context)=> FlutterApp(),
        '/second': (context)=> NamedRouteTwo(),
        '/third': (context)=>  NamedRouteThree(),
      },

    );
  }
}


class FlutterApp extends StatefulWidget {
  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
 bool themer = false;

 @override
  void initState() {
    super.initState();
    DartHttp().getJson();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("First Flutter App"),
            centerTitle: true,
            elevation: 0,
            actions: [
              TextButton(
                onPressed: (){
                  setState(() {
                    themer = !themer;
                  });
                },
                child: Icon(Icons.badge, color: Colors.white,)
              ),
              PopUp(),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: "one"),
                Tab(icon: Icon(Icons.add_call)),
                Tab(text: "two"),
                Tab(icon: Icon(Icons.add_call))
              ],
            )
          ),
          drawer: AppDrawer(),
          endDrawer: AppDrawer(),
          floatingActionButton: FloatingButton(),
          bottomNavigationBar: BottomNav(),
          persistentFooterButtons: [ PersistenceBottom() ],
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            // child: Slidders(),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: [
                /** Supposed to occupy the body */
                // TabBarView(children: [
                //   Text("ONE"),
                //   Text("ONE"),
                //   Text("ONE"),
                //   Text("ONE"),
                // ]),
                ElevatedButton(
                  child: Text("Goto New Page using NamedRoute", style: TextStyle(fontSize: 18),),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/second');
                  },
                ),
                GotoNewPage(context),
                DropDownMenu(),
                Crypto(),
                Kontainer(),
                SPannedText(),
                Input(),
                Buton(),
                Stackers(),
                Formz(),
                Dialogs(),
                Cardz(),
                Images(),
                Snackbarz(),
                Listz(),
                CheckBoxes(),
                Radios(),
                Progression(),
                ToolTipper(),
                Slidders(),
                Switches(),
                Chartses(),
                ThemeTest(),
                TheTables(),
                TheCalendar(),
                AnimationSamples(),
                // TheAnimation(),
              ],

            ),
          )
        ),
      ),
      theme: !themer? ThemeData.light() : ThemeData.dark()

    );
  }
}
