import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.0,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.lightBlueAccent,
        textColor: Colors.black,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 21,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
