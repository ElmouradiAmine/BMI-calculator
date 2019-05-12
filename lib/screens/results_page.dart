import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/large_button.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;
  final Color titleColor;

  const ResultsPage(
      {@required this.result,
      @required this.bmi,
      @required this.interpretation,
      @required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 30.0, right: 30.0, bottom: 15.0),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ReusableCard(
                color: kActiveCardColor,
                child: Padding(
                  padding: EdgeInsets.all(56.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                result,
                                style: kResultTextStyle(titleColor),
                              ),
                              Text(
                                bmi,
                                style: kBMIValueStyle,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Normal BMI range:',
                                style: KBMIHeadStyle1,
                              ),
                              Text(
                                '18,5 - 25 kg/m2',
                                style: kBMIBodyStyle,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Center(
                            child: Text(
                              interpretation,
                              textAlign: TextAlign.center,
                              style: kBMIBodyStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: LargeButton(
              label: 'RE-CALCULATE YOUR BMI',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
