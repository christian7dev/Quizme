import 'package:flutter/material.dart';
import 'package:quizme/main.dart';

import 'Homepage.dart';


class ScorePage extends StatelessWidget {
  final score;
  const ScorePage({Key? key, this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        body: Column(
          children: [
           const Padding(
              padding:  EdgeInsets.only(top: 80.0),
              child: Center(
                child: Text(
                  "SCORE",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                  score == 0 ? "0" : score.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: GestureDetector(
                onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) =>  const MainPage()));

                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Center(
                    child: Text(
                      "RETRY",
                      style: TextStyle(
                        fontSize: 22,
                          color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const  Center(
                    child: Text(
                        "EXIT",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );

  }
}

