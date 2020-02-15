import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 40.0),
          ),
          Text(
            'Your Total Score Is '+score.toString(),
            textScaleFactor: 2.5,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          FlatButton(
            child: Text(
              'Reset Quiz',
              textScaleFactor: 1.5,
            ),
            textColor: Colors.indigoAccent,
            focusColor: Colors.black,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
