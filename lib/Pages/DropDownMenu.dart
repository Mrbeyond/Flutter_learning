import "package:flutter/material.dart";
class DropDownMenu extends StatelessWidget {
  final menuLists = [
    MenuList(icon: Icons.phone_android, text: "Android phone", index: 1),
    MenuList(icon: Icons.alarm, text: "System Alarm", index: 2),
    MenuList(icon: Icons.album, text: "Music Album", index: 3),
    MenuList(icon: Icons.science, text: "Lab Apparatus", index: 4),
    MenuList(icon: Icons.airplanemode_active, text: "Flight Card", index: 5),
  ];

  MenuList _currentMenu;

  List<DropdownMenuItem<MenuList>> _dropdownMenuItems;

  DropDownMenu(){
    _dropdownMenuItems = makeDropDownLayout(menuLists);
    _currentMenu = menuLists[0];
    print(_dropdownMenuItems);
  }

  List<DropdownMenuItem<MenuList>> makeDropDownLayout(List<MenuList> lists ){
    List<DropdownMenuItem<MenuList>> menus = [];
      for(MenuList menuList in lists){
        menus.add(
          DropdownMenuItem(
            child: Text("${menuList.text}"),
            value: menuList
          )
        );
      }
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text("Buttons",
              style: TextStyle(fontSize: 30, color: Colors.red[500])
          ),
        ),
        DropdownButtonHideUnderline(
        child: DropdownButton(
          value: _currentMenu,
          items: _dropdownMenuItems,
          onChanged: (current){
            print("${current.text} is current");
          },
        ),
      ),
    ]
    );
  }


}
class MenuList{
  int index;
  String text;
  IconData icon;

  MenuList({this.icon, this.text, this.index});
}