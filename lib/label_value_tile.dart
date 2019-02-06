import 'package:flutter/material.dart';

class LabelValueTile extends StatelessWidget {
  final String label;
  final String value;

  LabelValueTile({ this.label, this.value });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 18
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.w600
          )
        )
      ],
    );
  }
}