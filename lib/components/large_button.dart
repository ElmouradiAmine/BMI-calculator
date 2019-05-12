import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class LargeButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const LargeButton({@required this.onTap, @required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
          label,
          style: kLargeButtonTextStyle,
        )),
      ),
    );
  }
}
