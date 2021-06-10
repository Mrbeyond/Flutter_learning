import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Formz extends StatefulWidget {
  @override
  _FormzState createState() => _FormzState();
}

class _FormzState extends State<Formz> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:20, bottom: 20),
              child: Text("The Mighty Form",
              style: TextStyle(fontSize: 30, color: Colors.red,letterSpacing: 2,fontWeight: FontWeight.bold),
              ),
            ),

              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "",
                  labelText: "First Name"
                ),
                keyboardType: TextInputType.name,
                validator: (field){
                  if(field.isEmpty){
                    return "Please enter your first name";
                  }else if(!RegExp(r"\D{3,}$").hasMatch(field)){
                    return "Name must be minimum if 3 characters";
                  }
                return null;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"\D+")),
                ],
              ),

              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "",
                  labelText: "Last Name"
                ),
                validator: (field){
                  if(field.isEmpty){
                    return "Please enter your last name";
                  }else if(!RegExp(r"\D{3,}$").hasMatch(field)){
                    return "Name must be minimum if 3 characters";
                  }
                  return null ;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]")),
                ],
              ),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "",
                  labelText: "Email"
                ),
                validator: (field){
                  if(field.isEmpty){
                    return "Please enter your email";
                  }else if(!RegExp(r"\w+\.*\w+@\w+\.*\w\.\w+").hasMatch(field)){
                    return "Name must be minimum if 3 characters";
                  }
                  return null ;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9a-zA-Z@_.]")),
                ],
              ),

              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: "",
                  labelText: "phone"
                ),
                keyboardType: TextInputType.phone,
                validator: (field){
                  if(field.isEmpty){
                    return "Please enter your phone number";
                  }else if(!RegExp(r"^\d{11}$").hasMatch(field)){
                    return "Enter a valid phone number";
                  }
                  return null ;
                },
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                maxLength: 11,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                ],
              ),

              Container(
                padding: EdgeInsets.only(top:30),
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      // Scaffold.of(context).showSnackBar(snackbar)
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Processing form")));
                    }else{
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Invalid form")));

                    }
                  },
                  child: Text("Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              )
            ],

          ),
        ));
  }
}

