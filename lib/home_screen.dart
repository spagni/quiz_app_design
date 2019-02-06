import 'package:flutter/material.dart';
import 'background_widget.dart';

class HomeScreen extends StatelessWidget {
  TextStyle get _nameStyle => TextStyle(
    fontSize: 58.0,
    fontWeight: FontWeight.w600,
    letterSpacing: -3,
    color: Colors.white,
    
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BackgroundWidget(),
            _buildMenuIcon(),
            _buildName(context)
          ],
        ),
      ),
    );
  }

  Widget _buildMenuIcon() {
    return Positioned(
      right: 12.0,
      top: 12.0,
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        shape: StadiumBorder(),
        child: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: 35.0),
          onPressed: (){},
        ),
      ),
    );
  }

  Widget _buildName(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .10,
      left: 24.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Sebastian', style: _nameStyle, textAlign: TextAlign.start),
          Text('Pagni', style: _nameStyle, textAlign: TextAlign.start)
        ],
      )
    );
  }
}