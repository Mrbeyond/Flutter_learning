import "package:flutter/material.dart";

class PopUp extends StatelessWidget {
  final List<Iconizer> iconList = [
    Iconizer(icon: Icons.bluetooth, title: "Bluetooth"),
    Iconizer(icon: Icons.wifi, title: "Wifi"),
    Iconizer(icon: Icons.signal_cellular_connected_no_internet_4_bar, title: "Internet"),
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext popContext){
        return iconList.map(( Iconizer iconizer) {
          return PopupMenuItem<Iconizer>(
            child: Text(iconizer.title),
            value: iconizer,
          );
      }).toList();
    },
      onSelected: (Iconizer iconizer){
        print("${iconizer.title} icon is ${iconizer.icon}");
      },
      // child: Icon(Icons.badge),
    );
  }
}

class Iconizer{
  String title;
  IconData icon;

  Iconizer({this.icon, this.title});
}
