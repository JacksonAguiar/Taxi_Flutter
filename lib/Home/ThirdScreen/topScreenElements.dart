import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 115,
    padding: EdgeInsets.only(top: 20),
    color: Color(0xFFF7F7F8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 30),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 15,
              textColor: Colors.black,
              child: Icon(
                Icons.arrow_downward,
                size: 25,
              ),
              padding: EdgeInsets.all(14),
              shape: CircleBorder(),
            )),
        Container(
          height: 40,
          width: 230,
          child: CupertinoTextField(
            cursorColor: Colors.white,
            readOnly: true,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                fontSize: 23,
                decorationColor: Color(0xFFEA4C89),
                backgroundColor: Color(0xFFEA4C89)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFEA4C89),
            ),
            maxLines: 1,
            placeholder: "FARES",
            placeholderStyle: TextStyle(
                fontFamily: "Montserrat",
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 23,
                decorationColor: Color(0xFFEA4C89),
                backgroundColor: Color(0xFFEA4C89)),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 80,
        )
      ],
    ),
  );
;
  }
}