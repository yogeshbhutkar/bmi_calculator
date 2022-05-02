import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.initialText,
      @required this.finalInterpretation});
  final String bmiResult;
  final String initialText;
  final String finalInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: Text(
                'YOUR RESULTS',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCode(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: resultTextStyle,
                  ),
                  Text(
                    initialText,
                    style: kBMITextStyle,
                  ),
                  Text(
                    finalInterpretation,
                    style: kDetailStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Bottom(tap: () => Navigator.pop(context), text: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
