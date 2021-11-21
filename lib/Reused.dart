import 'package:flutter/material.dart';


class Reused extends StatelessWidget {
  final  Color color;
  final Widget w;
final Function f1;

  Reused({this.color,this.w,this.f1});

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: f1,
      child: Container(
        child:w,



        margin:EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:color,

          borderRadius: BorderRadius.circular(10),



        ),



      ),
    );

  }
}











