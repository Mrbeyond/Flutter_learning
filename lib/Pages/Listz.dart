import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart' ;

class Listz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top:20),
      child: Column(
        children: [
          Pacer("Simple List"),
          SimpleList(),
          Pacer("Long List"),
          LongList(),

        ],
      ),
    );
  }
}

class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text("Calender"),
          leading: Icon(Icons.calendar_today),
          subtitle: Text("This is the calender tile"),
        ),

        ListTile(
          title: Text("Extinguisher"),
          leading: Icon(Icons.fire_extinguisher),
          subtitle: Text("This is the Extinguisher tile"),
        ),
        ListTile(
          title: Text("Two wheeler"),
          leading: Icon(Icons.two_wheeler),
          subtitle: Text("This is the Two wheeler tile"),
        ),
        ListTile(
          title: Text("Login"),
          leading: Icon(Icons.login),
          subtitle: Text("This is the Login tile"),
        ),
        ListTile(
          title: Text("User"),
          leading: Icon(Icons.verified_user),
          subtitle: Text("This is the User tile"),
        ),
        ListTile(
          title: Text("House"),
          leading: Icon(Icons.home),
          subtitle: Text("This is the Home tile"),
        ),
        ListTile(
          title: Text("Road"),
          leading: Icon(Icons.add_road),
          subtitle: Text("This is the Road tile"),
        ),
      ],
    );
  }
}

class LongList extends StatelessWidget {
 final List<dynamic> dynamo =  List.generate(50, (index) => "This is ${index+1}" );
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dynamo.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text(dynamo[index]),
          subtitle: Text("The index is $index "),
        );
      }
    );
  }
}
