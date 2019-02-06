import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final Color mainColor;
  final String title;
  final String subtitle;
  final IconData icon;

  GridButton({ this.mainColor, this.subtitle, this.title, this.icon });

  Color get _textColor => Colors.indigo[800];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * .37,
      width: MediaQuery.of(context).size.width * .37,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: EdgeInsets.all(16.0),
      child: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: _textColor,
            fontSize: 12,
            fontWeight: FontWeight.w800
          ),
        ),
        SizedBox(height: 2),
        Container(
          height: 2.5,
          width: 25.0,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(5)
          ),
        ),
        SizedBox(height: 10),
        Text(
          subtitle,
          style: TextStyle(
            color: _textColor,
            fontSize: 20,
            fontWeight: FontWeight.w800,
            wordSpacing: -3
          ),
        ),
        SizedBox(height: 12),
        Expanded(
          child: Icon(icon, size: 50, color: mainColor),
        )
      ],
    );
  }
}