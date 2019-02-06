import 'package:flutter/material.dart';
import 'background_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BackgroundWidget()
          ],
        ),
      ),
    );
  }
}