import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'secondScreen.dart';


class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, 
       MaterialPageRoute(builder: (context) => SecondScreen())
     );
    });
    return Container(
      color: Color(0xFFEA4C89),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon( 
            Icons.check,
            color: Colors.white,
            size: 150,
          ),
          Text("Success",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                decoration: TextDecoration.none,
              ))
        ],
      ),
    );
  }
}
