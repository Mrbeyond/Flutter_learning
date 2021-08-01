import "package:flutter/material.dart";

class PersistenceBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: (){
          print("Persistent Bottom buttons");
        }, child: Icon(Icons.more_time)),
        ElevatedButton(onPressed: (){
          print("Persistent Bottom buttons 2");
        }, child: Icon(Icons.more_time)),
      ],
    );
  }
}
