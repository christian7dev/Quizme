import 'package:flutter/material.dart';
import 'package:quizme/widgets/main_text.dart';


class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mainText(40.0, 20.0),
            const SizedBox(
              height: 20,
            ),
           RichText(
               text:const  TextSpan(
                   children: [
                     TextSpan(
                         text: "DEVELOPED BY",
                       style: TextStyle(
                         color: Colors.black
                       ),
                     ),
                     TextSpan(
                         text: " CTM"
                     ),
                   ],
                   style: TextStyle(
                   fontSize: 23,
                     fontWeight: FontWeight.bold
                 )

           )),
           const  Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                  "YOU CAN CONTACT ME ON :- ",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.mail_outline),
                    Text(
                      " EXAMPLE@EXAMPLE.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.send),
                    Text(
                        " @CTM",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.facebook),
                    Text(
                      "  🤢I don't use facebook it sucks🤮 ",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
