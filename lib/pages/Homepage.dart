import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizme/pages/scorePage.dart';
import '../widgets/Card.dart';
import '../widgets/main_text.dart';




class MainPage extends StatefulWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}




class _MainPageState extends State<MainPage> {
  late Color col1 = Colors.deepPurple;
  late Color col2 = Colors.deepPurple;
  late Color col3 = Colors.deepPurple;
  late Color col4 = Colors.deepPurple;

  int x = 0;
  int score = 00;
  List qanda = [];
  int time = 5;

  Future fetchData() async {
    final _data = await rootBundle.loadString("json/qanda.json");
    final data = jsonDecode(_data);
    qanda = data;
    return 1;
  }

  void counter(){
    Timer.periodic( const Duration(seconds: 1), (timer){
      if(time > 0){
        setState(() {
          time--;
        });

      }
      else{
        setState(() {
          timer.cancel();
          Navigator.pushReplacement(
              context, MaterialPageRoute(
              builder: (context) => ScorePage(score: score,)));
        });
      }
    });
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => counter());
  }


  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {

          if(snapshot.hasData){

            return  Scaffold(
              backgroundColor: Colors.deepPurpleAccent[100],
              appBar: AppBar(
                backgroundColor: Colors.deepPurpleAccent,
                centerTitle: true,
                title: mainText(25.0,20.0),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [

                Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children:   [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150,
                        height: 70,
                        //color: Colors.grey,
                        child: Center(
                            child: Text(
                              "TIMER : " + time.toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 70,
                      width: 150,
                      child: Center(
                        child: Text(
                          "SCORE : " + score.toString(),
                          style: const  TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


                    (x <= (qanda.length-1)) ? cards(qanda[x]["Question"]) : const CircularProgressIndicator(),
                    const  SizedBox(
                      height: 35,
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [



                        (x <= (qanda.length-1)) ? GestureDetector(
                          onTap: (){
                            setState(() {

                              qanda[x]["a1"][0]["isans"] == "true" ? col1 = Colors.green : col1 = Colors.red;
                              qanda[x]["a1"][0]["isans"] == "true" ? score+=50 : score-=0;
                              if(x <= qanda.length -1 ){
                                Future.delayed(const Duration(milliseconds: 300) , (){
                                  setState(() {
                                    x++;
                                    col1 = Colors.deepPurple;
                                    if(x  > (qanda.length-1)){
                                      setState(() {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScorePage(score: score,)));
                                      });
                                    }
                                  });

                                });

                              }

                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                color: col1,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:  Center(
                                child: Text(
                                  qanda[x]["a1"][0]["choice"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                )
                            ),
                          ),
                        ) : const CircularProgressIndicator(),






                        (x <= (qanda.length-1)) ? GestureDetector(
                          onTap: (){
                            setState(() {
                              qanda[x]["a2"][0]["isans"] == "true" ? col2 = Colors.green : col2 = Colors.red;
                              qanda[x]["a2"][0]["isans"] == "true" ? score+=50 : score-=0;
                              if(x < qanda.length){
                                Future.delayed(const Duration(milliseconds: 300) , (){
                                  setState(() {
                                    x++;
                                    col2 = Colors.deepPurple;
                                    if(x == (qanda.length)){
                                      setState(() {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScorePage(score: score,)));
                                      });

                                    }
                                  });

                                });

                              }

                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                color: col2,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:  Center(
                                child: Text(
                                  qanda[x]["a2"][0]["choice"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                )
                            ),
                          ),
                        ) : const CircularProgressIndicator(),
                      ],
                    ),


                    const SizedBox(
                      height: 20,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [




                        (x <= (qanda.length-1)) ?  GestureDetector(
                          onTap: (){
                            setState(() {
                              qanda[x]["a3"][0]["isans"] == "true" ? col3 = Colors.green : col3 = Colors.red;
                              qanda[x]["a3"][0]["isans"] == "true" ? score+=50 : score-=0;
                              if(x < qanda.length){
                                Future.delayed(const Duration(milliseconds: 300) , (){
                                  setState(() {
                                    x++;
                                    col3 = Colors.deepPurple;
                                    if(x == (qanda.length)){
                                      setState(() {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScorePage(score: score,)));
                                      });

                                    }
                                  });

                                });

                              }

                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                color: col3,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:  Center(
                                child: Text(
                                  qanda[x]["a3"][0]["choice"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                )
                            ),
                          ),
                        ) : const CircularProgressIndicator(),




                        (x <= (qanda.length-1)) ?  GestureDetector(
                          onTap: (){
                            setState(() {
                              qanda[x]["a4"][0]["isans"] == "true" ? col4 = Colors.green : col4 = Colors.red;
                              qanda[x]["a4"][0]["isans"] == "true" ? score+=50 : score-=0;
                              if(x < qanda.length){
                                Future.delayed(const Duration(milliseconds: 300) , (){
                                  setState(() {
                                    x++;
                                    col4 = Colors.deepPurple;
                                    if(x == (qanda.length)){
                                      setState(() {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScorePage(score: score,)));
                                      });

                                    }
                                  });
                                });
                              }

                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                color: col4,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                                child: Text(
                                  qanda[x]["a4"][0]["choice"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                )
                            ),
                          ),
                        ) : const CircularProgressIndicator(),
                      ],
                    ),




                  ],
                ),
              ),
            );
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
