import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color(0XFFF7F7F8),
    height: 90,
    margin: EdgeInsets.only(top: 210),
    child: Row(
      children: <Widget>[
        Container(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Brand of Car",
              style: GoogleFonts.montserrat(
                  color: Color(0xFF727176),
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "AN787891",
              style: GoogleFonts.montserrat(
                  color: Color(0xFFAEADB3),
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(50, 14, 0, 0),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Sample Name",
                style: GoogleFonts.montserrat(
                    color: Color(0xFFEA4C89),
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        )
      ],
    ),
  );
  }
}