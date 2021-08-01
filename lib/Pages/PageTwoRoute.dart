import "package:flutter/material.dart";


class PageTwoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 5,
      ),
      body: BodyPart(),
    );
  }
}

class BodyPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> Scaffold(
                appBar: AppBar(
                  elevation: 5,
                ),
                body: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.red[500],
                    child: Center(
                        child: Text("Third inner route", style: TextStyle(fontSize: 25),)
                    ),
                  ),
                ),
              )));
        },
        child: FlutterLogo(
          size: 100.0,
        ),
      ),

    );
  }
}

