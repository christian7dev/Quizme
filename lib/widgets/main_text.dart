import 'package:flutter/material.dart';


Widget mainText( q ,m){
  return RichText(
      text:  TextSpan(
        children: [
          TextSpan(
            text: "QUIZ",
            style: TextStyle(
              color: Colors.black,
              fontSize: q,
              fontWeight: FontWeight.bold,
            )
          ),
          TextSpan(
            text: "ME.",
            style: TextStyle(
              color: Colors.white,
              fontSize: m,
              fontWeight: FontWeight.bold,
            )
          )
        ]
      )
  );
}