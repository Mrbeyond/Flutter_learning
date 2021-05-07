import "package:flutter/material.dart";

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        print("Floating button is now pressed");
      },
      child: Icon(Icons.add),
      elevation: 8,

    );
  }
}
