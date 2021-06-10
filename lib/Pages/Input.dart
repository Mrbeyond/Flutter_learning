import "package:flutter/material.dart";

class Input extends StatelessWidget {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController passkey = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text("Beginning of inputs",
            style: TextStyle(
              fontSize: 30,
              color:Colors.red[500],
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              border:/* InputBorder.none,*/ OutlineInputBorder(),
              labelText: "First Name",
              hintText: "Enter your first name here"
            ),
            controller: firstName,
          ),

          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, //OutlineInputBorder(),
                icon: Icon(Icons.badge),
                filled:true,
                focusedBorder: OutlineInputBorder(),
                labelText: "Last Name",
                helperText: "Helper text for last name input",
                hintText: "Enter your last name here"
            ),
            controller: lastName,
          ),

          SizedBox(height: 20),
          TextField(
            obscureText: true,
            controller: passkey,
            decoration: InputDecoration(
                // border: InputBorder.none, //OutlineInputBorder(),
                labelText: "Passkey",
                hintText: "Enter passkey here"
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              return showDialog(
                  context: context,
                  builder: (context){
                    return SafeArea(
                      child: AlertDialog(
                        title: Text(
                          "The sumitted form",
                          style: TextStyle(
                          fontSize: 25,
                          color: Colors.red[500],
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        content: Container(
                          color: Colors.grey[200],
                          child: Padding(
                            padding: EdgeInsets.only(top:20),
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: "First name is:", style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                    )),
                                    TextSpan(text: firstName.text,
                                      style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 20,
                                    )),
                                  ]
                                )),
                                RichText(text: TextSpan(
                                    children: [
                                      TextSpan(text: "Last name is:", style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                      )),
                                      TextSpan(text: lastName.text,
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 20,
                                          )),
                                    ]
                                )),
                                RichText(text: TextSpan(
                                    children: [
                                      TextSpan(text: "Passkey is:", style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                      )),
                                      TextSpan(text: passkey.text,
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 20,
                                          )),
                                    ]
                                )),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: (){
                              print("Modal");
                              Navigator.of(context).pop();
                            },
                            child: Text("OK", style: TextStyle(
                              color:Colors.blue[500],
                            ),),

                          )
                        ],
                      )
                    );
                  }
              );
            },
            child: Text('Check'),
          )

        ],
      ),
    );
  }
}
