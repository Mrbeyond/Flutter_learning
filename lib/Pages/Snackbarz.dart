import "package:flutter/material.dart";

class Snackbarz extends StatefulWidget {
  @override
  _SnackbarzState createState() => _SnackbarzState();
}

class _SnackbarzState extends State<Snackbarz> {

  List<int> lists = List.generate(20, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        children: [
            ...lists.map((data){
              return ListTile(
                title: Text("$data"),
                trailing: Container(
                  width: 60,
                  child: TextButton(
                    child: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                    onPressed: (){
                      displaySnackBar(context, data);
                    },
                  ),
                ),
              );
            })
        ],
      ),
    );
  }

  void displaySnackBar( BuildContext context, int index){

    var deletedNumber = lists[index];
    setState(() {
      lists.removeAt(index);
    });

    SnackBar snackBar = SnackBar(
        content: Text("Just deleted $deletedNumber"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          setState(() {
            lists.insert(index, deletedNumber);
          });
        },
      ),
    );
    
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

  }
}
