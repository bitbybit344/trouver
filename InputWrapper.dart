import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputField.dart';
import 'main.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: InputField(),
          ),
          SizedBox(height: 40,),
          Text(
            "Forgot Password ?",
            style: TextStyle(color: Colors.lightBlue),
          ),
          SizedBox(height: 40,),
          Button(),
          FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Features();
                }));
              },
              child: Container(),
            color: Colors.transparent,
            height: 1,
          ),
          SizedBox(height: 40,),
          Text(
            "Don't have an account ? Sign Up",
            style: TextStyle(color: Colors.lightBlue),
          ),
        ],
      ),
    );
  }
}