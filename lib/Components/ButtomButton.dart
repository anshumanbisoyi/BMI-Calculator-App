import 'package:flutter/material.dart';
import '../Constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.button});
  final Function onTap;
  final String button;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(button, style: kLargeButtonTextStyle)),
        color: kbottomCardColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottonContainerHeight,
      ),
    );
  }
}
