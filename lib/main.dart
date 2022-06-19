import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'question.dart';
import './answer.dart';

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
    if (_queIndex < questions.length) {}
    setState(() {
      _queIndex++;
    });
    print('$_queIndex // $_queIndex');
  }

  final questions = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Center(
        //     child: SizedBox(
        //         width: 20,
        //         height: 20,
        //         child: CircularProgressIndicator(
        //           strokeWidth: 10,
        //           backgroundColor: Colors.white,
        //         ))),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100,
        title: const Text(
          'Quiz App',
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
      body: Column(
        children: [
          Question(
            questions[_queIndex]['questionText'].toString(),
          ),
          ...(questions[_queIndex]['answers'] as List<String>).map((answer) {
            return Answer(_ansQue, answer);
          }).toList(),
        ],
      ),
    );
  }
}
