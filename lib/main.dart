import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizme/pages/Aboutus.dart';
import 'package:quizme/pages/Homepage.dart';
import 'package:quizme/pages/Moregames.dart';
import 'widgets/main_text.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "quizme",
    home: HomePage(),));
}



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Color col = Colors.grey;
  int time = 5 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0 , bottom: 20),
                  child: Center(
                      child: mainText(40.0,30.0)),
                ),
                const SizedBox(
                  height: 100,
                ),

                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) =>  MainPage()));
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const MoreGame())
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Text(
                        "MORE GAMES",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Aboutus())
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Text(
                        "ABOUT-US",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),

    );
  }
}
