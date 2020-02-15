import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  final _questions = const [
    {
      'question': 'Question 1',
      'answers': [
        {'text': 'Answer 1', 'score': 0},
        {'text': 'Answer 2', 'score': 0},
        {'text': 'Answer 3', 'score': 1},
      ],
    },
    {
      'question': 'Question 2',
      'answers': [
        {'text': 'Answer 1', 'score': 0},
        {'text': 'Answer 2', 'score': 1},
        {'text': 'Answer 3', 'score': 0},
      ],
    },
    {
      'question': 'Question 3',
      'answers': [
        {'text': 'Answer 1', 'score': 0},
        {'text': 'Answer 2', 'score': 0},
        {'text': 'Answer 3', 'score': 0},
        {'text': 'Answer 4', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
  void _resetQuiz(){
    setState(() {
      totalScore=0;
      _questionIndex=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            textScaleFactor: 1.2,
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(totalScore, _resetQuiz),
      ),
    );
  }
}
