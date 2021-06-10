import "package:flutter/material.dart";

class Buton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 20),
            child: Text("Buttons",
              style: TextStyle(fontSize: 30, color: Colors.red[500])
            ),
          ),
          TextButton(onPressed: (){}, child: Text("Text Button", style: TextStyle(fontSize: 25),) ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){}, child: Text("Elevated Button", style: TextStyle(fontSize: 25),) ),
          SizedBox(height: 20),
          IconButton(
            icon: Icon(Icons.accessible),
            iconSize: 30,
            onPressed: (){},

          ),
          SizedBox(height: 20),
          InkWell(child: Text("Inkwell Button", style: TextStyle(fontSize: 25))),
          SizedBox(height: 20),
          OutlinedButton(onPressed: (){}, child: Text("Outlined Button", style: TextStyle(fontSize: 25),) ),
          Container(
            child: new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              alignment: MainAxisAlignment.spaceBetween,
              layoutBehavior: ButtonBarLayoutBehavior.padded,
              children: [
              TextButton(onPressed: (){}, child: Text("Text Button", style: TextStyle(fontSize: 25),) ),
              ElevatedButton(onPressed: (){}, child: Text("Elevated Button", style: TextStyle(fontSize: 25),) ),
              IconButton(
                icon: Icon(Icons.accessible),
                iconSize: 30,
                onPressed: (){},

              ),
              InkWell(child: Text("Inkwell Button", style: TextStyle(fontSize: 25))),
              OutlinedButton(onPressed: (){}, child: Text("Outlined Button", style: TextStyle(fontSize: 25),) ),

            ],),
          )

        ],
      ),
    );
  }
}
