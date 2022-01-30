import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey)
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Email ID",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                border: InputBorder.none
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey)
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                border: InputBorder.none
            ),
          ),
        ),
      ],
    );
  }
}