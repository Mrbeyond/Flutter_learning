import "package:flutter/material.dart";

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(

      child: SafeArea(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.deepOrange
              ),
              child: Text("BEYOND'S"),
            ),
            ListTile(
              title: new Text("All Mail Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ...new List(50).map((data){
              return ListTile(
                subtitle: Text("Ths subtitle"),
                trailing: Text("The trailing"),
                onTap: (){
                  print("Drawer tap");
                },
                onLongPress: (){
                  print("Drawer long presses");
                },
                leading: new Icon(Icons.mail),
                title: Text("map $data",
                  style: TextStyle(
                    color: Colors.cyan[500],
                    fontSize: 20,

                  ),
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
