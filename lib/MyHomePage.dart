import 'package:bmicalculator_class_assignment/ConstantFile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RepeatContainerCode.dart';
import 'RepeatTextIconWidget.dart';
import 'ConstantFile.dart';

enum Gender{
   male,
  female,
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 Gender selectGender;
 int sliderHeight=180;
 int sliderweight=60;
 int sliderAge=20;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

             Expanded(child: Row(
            children: <Widget>[
              Expanded(

                  child:RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender= Gender.male;
                    });
                  },

                    colors: selectGender==Gender.male
                        ?activeColor
                        :deActiveColor,
                    cardwidget: RepeatTextIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                  ),
              ),

              Expanded(

                child:RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender= Gender.male;
                    });
                  },
                colors:  selectGender==Gender.female
                    ?activeColor
                    :deActiveColor,
                cardwidget: RepeatTextIconWidget(
                  iconData: FontAwesomeIcons.female,
                  label: 'Female',
                ),
              ),
              ),
            ],
          ),),

              Expanded(child:  RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Height",style: kLabelStyle),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text(
                          sliderHeight.toString(),
                          style: jLabelStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelStyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: sliderHeight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue){
                          setState(() {
                            sliderHeight= newValue.round();
                          });
                        }

                    ),
                  ],
                ),
              ),
              ),
              Expanded(child: Row(
              children: <Widget>[
              Expanded(child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'Weight',
                      style: kLabelStyle,
                    ),
                    Text(
                      sliderweight.toString(),
                      style: jLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          RoundIcon(
                            iconData: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                sliderweight--;
                              });
                            },
                          ),
                        SizedBox(width: 10.0,),
                        RoundIcon(

                            iconData: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                sliderweight++;
                              });
                            },
                          ),

                      ],
                    ),
                  ],
                ),
              ),
              ),

              Expanded(child:  RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Age',
                      style: kLabelStyle,
                    ),
                    Text(
                      sliderAge.toString(),
                      style: jLabelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIcon(
                          iconData: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              sliderAge--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0,),
                        RoundIcon(

                          iconData: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              sliderAge++;
                            });
                          },
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              ),
            ],
          ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin:EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.iconData, @required this.onPress});
  final IconData iconData;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
