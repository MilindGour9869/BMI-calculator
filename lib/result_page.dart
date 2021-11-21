import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'inputpage.dart';
class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CAL' , style:TextStyle(
            color: Colors.white,
          )),
        ),
        backgroundColor: Ac,
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex:1,
              child: Center(
                child: Text(
                    'YOUR RESULT' , style:kts2


                ),
              )


          ),
          Expanded(
            flex:3,

            child: Container(
width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,

                borderRadius: BorderRadius.circular(10)
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(s2 ,style: kts),
                  Text(bmi.toStringAsFixed(1) ,style: kts2,)

                ],
              ),
            ),

          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Center(child: Text(map[s2]  ,style:kts)),

          ),

          Expanded(
            flex:1,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child:Container(
                color: btmc,
                  width: double.infinity,
                  child: Center(child: Text('Re-Calculate' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300
                  ),)))
            ),
          )


        ],

    ),
    );
  }
}
