import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text("SIGN IN", style: TextStyle(color: Colors.yellow, fontSize: 60, fontFamily: 'ArchitectsDaughter'),),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}