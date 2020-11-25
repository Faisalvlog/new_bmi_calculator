import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RepeatContainerCode.dart';
import 'RepeatTextIconWidget.dart';

const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF1D1E33);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color maleColor= deActiveColor;
  Color femaleColor= deActiveColor;

  void updateColor(int gender){

    if(gender==1){
      Color maleColor= activeColor;
      Color femaleColor= deActiveColor;

    }
  if(gender==2){
    Color maleColor= deActiveColor;
    Color femaleColor= activeColor;

  }
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child:RepeatContainerCode(
                    colors: maleColor,
                    cardwidget: RepeatTextIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
              child: GestureDetector(
              onTap: (){
              setState(() {
              updateColor(2);
              });
              },
                child:RepeatContainerCode(
                colors: femaleColor,
                cardwidget: RepeatTextIconWidget(
                  iconData: FontAwesomeIcons.female,
                  label: 'Female',
                ),
              ),
              ),
              ),
            ],
          ),),
          Expanded(child: RepeatContainerCode(colors: Color(0xFF1D1E33),),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child:  RepeatContainerCode(colors: Color(0xFF1D1E33),),
              ),
              Expanded(child:  RepeatContainerCode(colors: Color(0xFF1D1E33),),
              ),
            ],
          ),),
        ],
      ),
    );
  }
}

