import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function getter;
  final String answerText;

  const Answer(this.getter, this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          overlayColor: MaterialStateProperty.all(Colors.redAccent),
        ),
        onPressed: () {
          getter();
        },
        child: Text(
          answerText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
