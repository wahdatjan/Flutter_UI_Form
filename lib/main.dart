import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Interest Calculator App",
    home: SIForm(),
    theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State {
  var currencies = ["Rupees", "Dollors", "Pounds"];
  var _minimumPadding = 5.0;
  var currentSelectedItem = '';
  String result = '';
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    currentSelectedItem = currencies[0];
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var displayResult = '';

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/login_bk.png"), fit: BoxFit.fill)),
      child:Scaffold(
        backgroundColor: Colors.transparent,
          body: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(_minimumPadding * 2),
                child: ListView(
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        style: textStyle,
                        controller: nameController,
                        // ignore: missing_return
                        validator: (String value){
                          if(value.isEmpty){
                            return 'Please Enter Name';
                          }
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15.0
                            ),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        style: textStyle,
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: missing_return
                        validator: (String value){
                          if(value.isEmpty){
                            return 'Please Enter Email';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15.0
                            ),
                           ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        style: textStyle,
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        // ignore: missing_return
                        validator: (String value){
                          if(value.isEmpty){
                            return 'Please Enter Password';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.red ,
                              fontSize: 15.0
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: Expanded(
                          child: ButtonTheme(
                            minWidth: 100.0,
                            height: 70.0,
                            child: RaisedButton(
                              color: Colors.red,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                              child: Text(
                                'Sign Up',
                                textScaleFactor: 1.5,
                              ),
                              onPressed: () {
                                setState(() {
                                  if(_formKey.currentState.validate()){

                                  }
                                });
                              },
                            ),
                          )),



                    ),
                  ],
                ),
              )),
        ) ,
      );


  }






}
