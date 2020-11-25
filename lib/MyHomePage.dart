import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RepeatContainerCode.dart';
import 'RepeatTextIconWidget.dart';

const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF1D1E33);
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

