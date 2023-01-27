import 'package:flutter/material.dart';

void main() {
  runApp( Quizzler());
}

class Quizzler extends StatelessWidget {
  //const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List <Icon> scorekeeper = [/*
    Icon(Icons.check, color:Colors.green,),
    Icon(Icons.close, color: Colors.red,),
    Icon(Icons.close, color: Colors.red,),
    Icon(Icons.close, color: Colors.red,),
  */];
  List <String> questions = [
    'Will Buhari be your President next Year?',
    'Do you pie while sleeping?',
    'December is the last Month of the year',
    'Tuesday come first before Monday',
    'Nut is coated with shell',

  ];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'This is where the question Text will do.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                scorekeeper.add(Icon(Icons.check, color: Colors.green),);
              });

            },
            child: Text(
              'True',
              style: TextStyle(fontSize: 20.0,
                  color: Colors.green),
            ),
          ),
         )
        ),

        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    scorekeeper.add(Icon(Icons.close, color: Colors.red),);
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 20.0,
                      color: Colors.red),
                ),
              ),
            )
        ),
        Row(
          children: scorekeeper,
        )


      ],
    );
  }
}
