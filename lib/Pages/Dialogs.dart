import "package:flutter/material.dart";

class Dialogs  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top:30),
        child: Column(
          children: <Widget>[
            Info("Basic"),
            Basics(),

            Info("Input field"),
            Fielders(),

            Info("Confirm"),
            Confirm(),

            Info("Select"),
            Selects(),



          ],
        ),
      ),
    );
  }
}

class Basics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("The basic alert Dialog"),
                    content: Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Text("This is the basic alert dialog"),
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                        Navigator.of(context).pop();
                        },
                        child: Text("OK"))
                    ],
                  );
                });
              },
              child: Text("Show basic"))
        ],
      ),
    );
  }
}

enum ConfirmAction {
  Cancels,
  Accepts
}

class Confirm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top:30),
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: ()async{
                final ConfirmAction action = await _asyncConfirm(context);
                print("Action is $action");
                } ,
                child: Text(" Show Confirm"))


          ],
        ),
      ),
    );
  }



  Future<ConfirmAction> _asyncConfirm(BuildContext context) async {
    return showDialog<ConfirmAction>(
        context: context,
        barrierDismissible: false,
        builder: (context){
          return AlertDialog(
            title: Text("Confirm Dialog"),
            content: Text("This is the Confirm Dialog, Accepted?"),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop(ConfirmAction.Cancels);
              }, child: Text("Cancel")
              ),

              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop(ConfirmAction.Accepts);
                  }, child: Text("Accept")
              )
            ],
          );
        });
  }
}

class Info extends StatelessWidget{
  String title;
  Info(this.title);
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 30,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.red
        ),
      ),
    );
  }
}

enum Fruits{
  Apple,
  Mango,
  Orange,
  Guava,
  Watermelon,

}

class Selects extends  StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          ElevatedButton(onPressed: ()async{
            final Fruits fruit = await _fruitDialog(context);
            print("Your favourite fruit is $fruit ");
          }, child: Text("Select Dialog"))
        ],
      ),
    );
  }
  
  Future<Fruits> _fruitDialog(BuildContext context)async{
    return await showDialog<Fruits>(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("Select your favourite fruit"),
          children: [
            SimpleDialogOption(
              child: Text(Fruits.Apple.toString()),
              onPressed: (){
                Navigator.pop(context, Fruits.Apple);
              },
            ),
            SimpleDialogOption(
              child: Text(Fruits.Mango.toString()),
              onPressed: (){
                Navigator.pop(context, Fruits.Mango);
              },
            ),
            SimpleDialogOption(
              child: Text(Fruits.Orange.toString()),
              onPressed: (){
                Navigator.pop(context, Fruits.Orange);
              },
            ),
            SimpleDialogOption(
              child: Text(Fruits.Guava.toString()),
              onPressed: (){
                Navigator.pop(context, Fruits.Guava);
              },
            ),
            SimpleDialogOption(
              child: Text(Fruits.Watermelon.toString()),
              onPressed: (){
                Navigator.pop(context, Fruits.Watermelon);
              },
            ),
          ],
        );
      },
    );
  }
}

class Fielders extends StatelessWidget{
  TextEditingController _filedController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed:()=> _makeFieldDialog(context),
              child: Text("Show Field"))
        ],
      ),
    );
  }
  // Alert dialog composed in functional method unlike the basic

  _makeFieldDialog(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("The field alert Dialog"),
          content: Padding(
            padding: EdgeInsets.only(top:20),
            child: TextField(
              controller: _filedController,
              decoration: InputDecoration(
                hintText: "TextField in Dialog",
                labelText: "TextField"
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("SUBMIT"))
          ],
        );
      }
    );
  }
}

