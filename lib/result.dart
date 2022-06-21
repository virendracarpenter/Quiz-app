import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  const Result(this.reset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
      child: Center(
        child: Column(
          children: [
            const CircularProgressIndicator(
              strokeWidth: 15,
              backgroundColor: Colors.red,
            ),
            TextButton(
              onPressed: () {
                reset();
              },
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
