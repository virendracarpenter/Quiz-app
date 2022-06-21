import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _queIndex = 0;

  void _ansQue() {
    setState(() {
      _queIndex++;
    });
    print('$_queIndex // $_queIndex');
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Red', 'Green'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Elephant', 'Lion', 'Rabit', 'Cat'],
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': ['Football', 'Criket', 'Race', 'Ludo'],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Ice Cream', 'Sweet', 'Apple', 'Mango'],
    },
  ];

  void _restartQuiz() {
    setState(() {
      _queIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100,
        title: const Text(
          'Quiz App',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'times new roman',
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [Colors.red, Colors.pink],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ),
      body: _queIndex < _questions.length
          ? Padding(
              padding: const EdgeInsets.all(20),
              child: Quiz(
                _questions,
                _ansQue,
                _queIndex,
              ),
            )
          : Result(_restartQuiz),
    );
  }
}
