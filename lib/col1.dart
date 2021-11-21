import 'package:flutter/material.dart';



class Col1 extends StatelessWidget {

final String s;
final IconData i;

Col1({this.s,this.i});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          i,
          size:80,
          color:Colors.white,

        ),
        SizedBox(height:10),
        Text(s ,style:TextStyle(
          color: Color(0xffABAFC1),
        ))
      ],
    );
  }
}