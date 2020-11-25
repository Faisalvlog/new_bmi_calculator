import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                  child:RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    cardwidget: RepeatTextIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                  ),
              ),
              Expanded(child:RepeatContainerCode(
                colors: Color(0xFF1D1E33),
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

class RepeatTextIconWidget extends StatelessWidget {
  RepeatTextIconWidget({@required this.iconData,this.label});
final IconData iconData;
final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 90.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
          fontSize: 30.0,
          color: Color(0xFF8D8E98)
        ),),
      ],
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, this.cardwidget});
  final Color colors;
  final Widget cardwidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardwidget,

      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}