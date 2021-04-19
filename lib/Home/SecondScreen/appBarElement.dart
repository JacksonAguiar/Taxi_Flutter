import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../ThirdScreen.dart';

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.only(bottom: 0),
      color: Color(0xFFF7F7F8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 40),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
                color: Colors.white,
                elevation: 15,
                textColor: Colors.black,
                child: Icon(
                  Icons.arrow_forward,
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
              padding: EdgeInsets.all(0),
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
              placeholder: "PLANE A NEW RIDE",
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
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.all(0),
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 0,
                    textColor: Colors.black,
                    child: Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ))),
        ],
      ),
    );
  }
}
