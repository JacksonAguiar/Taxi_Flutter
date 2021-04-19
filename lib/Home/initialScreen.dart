import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//importando motion widget para animações de entrada
import 'package:motion_widget/motion_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SecondScreen.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if (height > 700) {
      height = 30;
    } else {
      height = 0;
    }
    MotionExitConfigurations exitMotion = MotionExitConfigurations(
        durationMs: 500,
        mode: MotionMode.TRANSLATE_FADE,
        orientation: MotionOrientation.LEFT);
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F8),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Motion<Column>(
                    exitConfigurations: exitMotion,
                    durationMs: 2500,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  MotionElement(
                    interval: Interval(0.0, 0.30),
                    child: appBar(height),
                  ),
                  MotionElement(
                    interval: Interval(0.2, 0.50),
                    child: body(),
                  ),
                  MotionElement(
                    interval: Interval(0.4, 0.50),
                    child: bottom(context, exitMotion),
                  ),
                ]))
          ],
        ));
  }
}

final _color = 0xFFEA4C89;

//Parte de cima da aplicação
Widget appBar(double heightvalue) {
  return Container(
    height: 90,
    margin: EdgeInsets.only(bottom: heightvalue),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          "Book A Cab",
          style: GoogleFonts.montserrat(
              color: Color(0xFF727176),
              fontSize: 25,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400),
        )
      ],
    ),
  );
}

//corpo da aplicação
Widget body() {
  return Container(
    height: 420,
    margin: EdgeInsets.only(bottom: 27),
    decoration: BoxDecoration(
        image: DecorationImage(
      alignment: Alignment.centerLeft,
      image: AssetImage("assets/images/Grupo 257.png"),
      fit: BoxFit.contain,
    )),
  );
}

//parte de baixo da aplicação
Widget bottom(context, MotionExitConfigurations exitMotion) {
  return LimitedBox(
      maxHeight: 135,
      child: Stack(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
              child: Text(
                "Let's Star",
                style:
                    GoogleFonts.montserrat(color: Colors.white, fontSize: 25),
              ),
              color: Color(_color),
              elevation: 10,
              padding: EdgeInsets.fromLTRB(80, 18, 80, 18),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0),
              ),
              onPressed: () => {
                exitMotion.controller.forward().whenComplete(() =>
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen())))
              },
            )
          ]),
          Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.brightness_1,
                    size: 15,
                    color: Color(_color),
                  ),
                  Container(
                    width: 10,
                  ),
                  Icon(
                    Icons.brightness_1,
                    color: Color(_color),
                    size: 15,
                  ),
                  Container(
                    width: 10,
                  ),
                  Icon(
                    Icons.brightness_1,
                    color: Color(_color),
                    size: 15,
                  ),
                ],
              ))
        ],
      ));
}
