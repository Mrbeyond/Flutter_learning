import "package:flutter/material.dart";

class Cardz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 50),
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("The mighty Card", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              Container(
                width: 300,
                height: 200,
                padding: EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.red[500],
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.album, size: 60,),
                      title: Text(
                        "Davido",
                        style: TextStyle( fontSize: 30),
                      ),

                      subtitle: Text("Fia Fia", style:  TextStyle(fontSize: 18),),
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: (){ /* */},
                            child: Text("Play",
                              style: TextStyle(color: Colors.black),
                            )
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                            onPressed: (){/* */},
                            child: Text("Pause",
                              style: TextStyle(color: Colors.black),
                            )
                        )
                      ],
                    )
                  ],
                ),
                ),
              ),
          ]
          ),
        ),
      );
  }
}