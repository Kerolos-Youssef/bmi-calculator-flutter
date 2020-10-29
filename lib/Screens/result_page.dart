import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components/reusable_card.dart';
import 'package:bmi_calculator/Components/bottom_botton.dart';

class ResultPage extends StatelessWidget {
  final String calcBMI;
  final String BMI_result;
  final String Interpetition;

  ResultPage(
      {@required this.calcBMI,
      @required this.BMI_result,
      @required this.Interpetition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    BMI_result.toUpperCase(),
                    style: KResultTextStyle,
                  ),
                  Text(
                    calcBMI,
                    style: KBMITextStyle,
                  ),
                  Text(
                    Interpetition,
                    style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomBotton(
              onTap: () {
                Navigator.pop(context);
              },
              bottonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
