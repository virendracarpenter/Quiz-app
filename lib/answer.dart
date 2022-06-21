import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function ansQue;
  final String answerText;

  const Answer(this.ansQue, this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.redAccent),
            overlayColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: () {
            ansQue();
          },
          child: Text(
            answerText,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
