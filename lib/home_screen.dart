import 'package:flutter/material.dart';
import 'background_widget.dart';
import 'label_value_tile.dart';
import 'grid_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  TextStyle get _nameStyle => TextStyle(
    fontSize: 58.0,
    fontWeight: FontWeight.w600,
    letterSpacing: -3,
    color: Colors.white,
    
  );
  double get _leftPadding => 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundWidget(),
          _buildMenuIcon(),
          _buildName(context),
          _buildInfoRow(context),
          _buildButtonsGrid(context)
        ],
      ),
    );
  }

  Widget _buildMenuIcon() {
    return Positioned(
      right: 16.0,
      top: 42.0,
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
      left: _leftPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Sebastian', style: _nameStyle, textAlign: TextAlign.start),
          Text('Pagni', style: _nameStyle, textAlign: TextAlign.start)
        ],
      )
    );
  }

  Widget _buildInfoRow(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .3,
      left: _leftPadding,
      right: _leftPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LabelValueTile(label: 'Level', value: '06'),
          LabelValueTile(label: 'Points', value: '3.980'),
          LabelValueTile(label: 'Rank', value: '720'),
        ],
      ),
    );
  }

  Widget _buildButtonsGrid(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .45,
      left: _leftPadding + 12.0,
      right: _leftPadding + 12.0,
      bottom: MediaQuery.of(context).size.height * .13,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GridButton(title: 'NEW', subtitle: 'Quick Play', mainColor: Colors.amber, icon: Icons.toll),
              GridButton(title: 'JANUARY', subtitle: 'Events', mainColor: Colors.lightBlueAccent, icon: Icons.today)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GridButton(title: 'SEASON 3', subtitle: 'Tournament', mainColor: Colors.pink, icon: FontAwesomeIcons.freebsd),
              GridButton(title: 'PLAY WITH FRIENDS', subtitle: 'Rivals', mainColor: Colors.purple, icon: FontAwesomeIcons.freeCodeCamp)
            ],
          )
        ],
      )
    );
  }
}