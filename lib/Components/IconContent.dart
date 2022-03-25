import 'package:flutter/material.dart';
import '../Constants.dart';

class malefemale extends StatelessWidget {
  malefemale({@required this.icon, this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
