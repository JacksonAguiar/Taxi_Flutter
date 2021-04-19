import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ThirdScreen/topScreenElements.dart';
import 'ThirdScreen/containerTotal.dart';
import 'ThirdScreen/containerOption.dart';
import 'lastScreen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if (height > 700) {
      height = 30;
    } else {
      height = 0;
    }
    return Container(
      color: Color(0xFFF7F7F8),
      child: Column(
        children: <Widget>[
          topScreen(),
          containerTotal(),
          listOption(),
          SizedBox(
            height: height,
          ),
          sideBottom(height),
          SizedBox(
            height: height,
          ),
          buttonBottom(context),
        ],
      ),
    );
  }
}

listOption() {
  return Column(
    children: <Widget>[
      Container(
        height: 20,
      ),
      containerOption("Standar", "80"),
      Container(
        height: 20,
      ),
      containerOption("Economy", "60"),
      Container(
        height: 20,
      ),
      containerOption("Luxury", "100"),
    ],
  );
}

sideBottom(_height) {
  _height = _height != 0 ? 170 + _height : 150.0;
  return Container(
    height: 90,
    width: _height,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/logo.png"), fit: BoxFit.fitWidth)),
  );
}

buttonBottom(context) {
  return SizedBox(
      width: double.infinity,
      height: 50,
      child: FlatButton(
        color: Color(0xFFEA4C89),
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LastScreen()));
        },
        child: Text(
          "Online Payament",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, fontSize: 25, color: Colors.white),
        ),
      ));
}
