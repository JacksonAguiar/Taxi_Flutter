import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_widget/motion_widget.dart';
import 'SecondScreen/appBarElement.dart';
import 'SecondScreen/containerScreen.dart';
import 'SecondScreen/customAutocomplete.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  MotionExitConfigurations exitMotion = MotionExitConfigurations(
      durationMs: 500,
      mode: MotionMode.TRANSLATE_FADE,
      orientation: MotionOrientation.LEFT);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F7F8),
      child: Column(
        children: <Widget>[appBar(), Expanded(child: bodyScreen())],
      ),
    );
  }

  Widget bodyScreen() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 430, //360
          margin: EdgeInsets.only(bottom: 175),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/map.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 400),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(0.2),
              offset: Offset(
                10.0, // Direita horizontal
                10.0, // Para baica vertical
              ),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          height: 140,
          padding: EdgeInsets.only(top: 10),
          width: 280,
          child: Column(
            children: <Widget>[
              AutoComplete(true),
              AutoComplete(false),
            ],
          ),
        ),
        containerScreen(),
      ],
    );
  }
}
