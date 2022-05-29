import 'package:flutter/material.dart';


Widget cards(String quiz){
  return Container(
    height: 300,
    width: 350,
    decoration: BoxDecoration(
      color: Colors.deepPurpleAccent,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0,0),
          blurRadius: 20,
        )
      ]
    ),
    child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10),
      child: Center(
          child: SingleChildScrollView(
            child: Text(
                quiz,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
            ),
          )
      ),
    ),
  );
}