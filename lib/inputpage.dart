import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reused.dart';


import 'col1.dart';
import 'constants.dart';


enum Gender{male,female}
int H=180;
int N1=40;
int N2=20;
double bmi;
String s2;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color m=inc;
  Color f=avc;

  Gender x;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Ac,

        title:Center(child: Text('BMI CAL',
        style:TextStyle(
            color:Colors.white,
        )))
      ),
      backgroundColor: Sc,
      body: Column(

        children: <Widget>[
          Expanded(
            flex:1,

            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,

                    child: Reused(


                      color:x==Gender.male ? avc:inc,
                      w:Col1(s:'MALE' ,i:FontAwesomeIcons.mars),
                      f1:(){
                      setState(() {
                        x=Gender.male;
                      });
                    },
                ),
                ),
                Expanded(
                  flex :1,
                  child: Reused(

                    color: x==Gender.female ? avc:inc,
                    w:Col1(s:'FEMALE' , i:FontAwesomeIcons.venus),
                    f1:(){
                      setState(() {
                        x=Gender.female;
                      });
                    },
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            flex:1,
           child:Reused(color:inc,
             w: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text(
                   'HEIGHT' ,
                   style:kts,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                   children: <Widget>[
                     Text(
                       H.toString() , style:kts2,

                     ),
                     Text(
                       'cm' , style:kts,

                     )
                   ],
                 ),
                 SliderTheme(
                   data:SliderTheme.of(context).copyWith(
                     activeTrackColor: Colors.white,
                       thumbColor: btmc,
                     inactiveTrackColor: Color(0xffABAFC1),
                     overlayColor: Color(0x29FF0067),
                     thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                     overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                   ),
                   child: Slider(
                     value:H.toDouble(),
                     min: 120.0,
                     max: 220.0,

                     onChanged:(double newvalue ){
                       setState(() {
                         H=newvalue.round();
                       });
                     }

                   ),
                 )

               ],
               ),

             ),
           ),


          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: Reused(color: inc,

                  w:col3('WEIGHT' , N1 , 1 ),),
                ),
                Expanded(
                  flex :1,
                  child: Reused(color:inc,
                  w:col3('AGE', N2 , 2))
                  ,
                ),

              ],
            ),
          ),
           GestureDetector(
             onTap: ()

             {
               setState(() {
                 bmi=(N1/(H*H))*10000;
                 if (bmi>25.0 )
                  { s2='OverWeight';}
                 if(bmi<=25.0 && bmi>=18)
                  { s2='Normal'; }
                 if(bmi<18.0)
                  { s2='BelowWeight';}

               });

              Navigator.pushNamed(context, 'result');
             },
            child: Container(
              child:Center(
                child: Text('Calculate', style: kts,
                ),),

              color:btmc,
              height:50,
              width:double.infinity,
              margin:EdgeInsets.only(top:10),

            ),
          ),





    ],







      )
    );

  }

  Column col3(String s1 ,int N , int n) {
    return Column(
                  children: <Widget>[
                    Text(
                      s1 , style:kts,
                    ),
                    Text(
                      N.toString(),style:kts2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(icon: FontAwesomeIcons.minus,b:(){
                          setState(() {
                            if(n==1)
                              { N1--;

                              }
                            else if(n==2)
                              {
                                N2--;
                              }


                          });
                        }),
                        SizedBox(width: 10,),
                        Button(icon: FontAwesomeIcons.plus,b:()
                        {
                          setState(() {
                            if(n==1)
                            { N1++;

                            }
                            else if(n==2)
                            {
                              N2++;
                            }
                          });
                        }),

                      ],
                    ),
                  ],
                );
  }
}


class Button extends StatelessWidget {

  final IconData icon;
  final Function b;

  Button({this.icon, this.b});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: Colors.teal,
      shape: CircleBorder(),
      onPressed: b,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,

      ),

    );
  }
}





