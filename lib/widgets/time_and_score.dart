import 'package:flutter/material.dart';


Widget Board(time , score){
  return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:   [
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 200,
                height: 70,
                //color: Colors.grey,
                child: Center(
                    child: Text(
                        "TIMER : " + time.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ),
            ),
             const Spacer(),
             SizedBox(
              height: 70,
              width: 150,
              child: Center(
                child: Text(
                    "SCORE : " + score.toString(),
                  style: const  TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow
                  ),
                ),
              ),
            ),
          ],
        ),
  );
}