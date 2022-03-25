import 'package:bmi_calculator/Components/ReusableCard.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import 'package:bmi_calculator/Components/ButtomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.interpretation,
    @required this.bmiResult,
    @required this.resultText,
  });
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF100F1E),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                )),
          ),
          Expanded(
            flex: 5,
            child: ReusuableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodytTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              button: "RECALCULATE")
        ],
      ),
    );
  }
}
