import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class containerTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
    height: 150,
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
    ], color: Color(0xFFEA4C89), borderRadius: BorderRadius.circular(20)),
    child: Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 95,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        child: Icon(
                      Icons.account_balance_wallet,
                      size: 90,
                      color: Colors.white,
                    ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 170,
                      child: Text(
                        "00 \$",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.montserrat(
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      width: 170,
                      child: Text(
                        "124 \$",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.montserrat(
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ),
          Container(color: Colors.white, height: 3),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "CASH",
                style: GoogleFonts.montserrat(
                  fontSize: 19,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
  }
}