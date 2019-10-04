import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuizApp(),
    ),
  );
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.question_answer),
        title: Text('Quiz App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 6,
              child: Center(child: Text('questions come in this section'))),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40,top: 32,bottom: 10),
              child: RaisedButton(
                child: Text('Correct'),
                color: Colors.green,
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40,top: 10,bottom: 32),
              child: RaisedButton(
                child: Text('Incorrect'),
                color: Colors.red,
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
