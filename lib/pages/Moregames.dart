import 'package:flutter/material.dart';

import '../widgets/main_text.dart';


class MoreGame extends StatelessWidget {
  const MoreGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
          title: mainText(25.0,20.0),
        elevation: 0,
      ),
      body: const Center(
        child: Text(
            "COMING SOON..........",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
