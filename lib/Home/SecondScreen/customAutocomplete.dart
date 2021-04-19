import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AutoComplete extends StatelessWidget {
  bool active;

  AutoComplete(this.active);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
              margin: EdgeInsets.only(bottom: 13),
              width: 40,
              child: Icon(
                Icons.brightness_1,
                color: Color(0xFFEA4C89),
                size: 12,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 25,
              width: 170,
              child: Text(
                "Current Direction",
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
              width: 170,
              child: Text(
                "Central Park",
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
              height: 35,
              margin: EdgeInsets.only(bottom: 15, left: 20),
              width: 35,
              child: Container(
                  decoration: BoxDecoration(
                      color: active
                          ? Color(0xFFEA4C89).withOpacity(0.3)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.brightness_1,
                    color: active ? Color(0xFFEA4C89) : Colors.transparent,
                    size: 12,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
