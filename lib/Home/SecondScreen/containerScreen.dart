import 'package:flutter/material.dart';
import 'bottomElement.dart';

class containerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _size = 23; //tamanho do icone star
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          color: Color(0xFFEA4C89),
          height: 50,
          padding: EdgeInsets.only(left: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xFFFEEE00),
                    size: _size,
                  )
                ],
              ),
              Container(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xFFFEEE00),
                    size: _size,
                  )
                ],
              ),
              Container(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xFFFEEE00),
                    size: _size,
                  )
                ],
              ),
              Container(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xFFFEEE00),
                    size: _size,
                  )
                ],
              ),
              Container(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xFFFEEE00),
                    size: _size,
                  )
                ],
              ),
            ],
          ),
        ),
        bottomScreen(),
        //Foto
        Container(
            height: 130,
            width: 130,
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(150)),
            child:
              Image(
                image: AssetImage("assets/images/avatar.png"),
                fit: BoxFit.cover,
              ),
        )
      ],
    );
  }
}
