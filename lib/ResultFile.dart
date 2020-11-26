import 'package:flutter/material.dart';
import 'ConstantFile.dart';
import 'RepeatContainerCode.dart';
import 'MyHomePage.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: jTitleStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: jTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: jTitleStyle,
                  ),
                  Text(
                    'BMI is low , need to work hard',
                    textAlign: TextAlign.center,
                    style: jTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:   GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
              },
              child: Container(
                child: Center(
                  child: Text('Calculate',
                    style: jButtonStyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin:EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
