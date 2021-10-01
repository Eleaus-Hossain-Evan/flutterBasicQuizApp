import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answerText;
  final Function selectHandeler;

  Answer(this.answerText, this.selectHandeler);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(fontSize: 16, height: 2.5),
          ),
          onPressed: () => selectHandeler,
        ),
      ),
    );
  }
}
