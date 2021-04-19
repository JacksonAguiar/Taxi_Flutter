import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class containerOption extends StatelessWidget {
  
  String option;
  String price;
  
  containerOption(this.option, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 70,
    width: 350,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        blurRadius: 10,
        color: Colors.black.withOpacity(0.2),
        offset: Offset(
          10.0, // Direita horizontal
          10.0, // Para baica vertical
        ),
      )
    ], color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              margin: EdgeInsets.only(bottom: 10, right: 5),
              width: 60,
              child: Icon(
                Icons.brightness_1, 
                color: Color(0xFFAEADB3),
                size: 45,
            )
            ,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 25,
              width: 200,
              child: Text(
                option,
                style: GoogleFonts.montserrat(
                  fontSize: 19,
                  color: Color(0xFF727176),
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              height: 24,
              width: 200,
               child: Text(
                "Arrival: Today 10:00 AM",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Color(0xFFAEADB3),
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              
              child: Text(
                price +" \$",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Color(0xFFEA4C89)
                )
              ),
            ),
          ],
        )
      ],
    ),
  );
  }
}