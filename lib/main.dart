import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final questions = [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        "Black",
        "Red",
        "White",
        "Blue",
      ],
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        "Rabbit",
        "Snake",
        "Tiger",
        "Lion",
      ],
    },
    {
      'question': 'What\'s your favourite instructor?',
      'answers': [
        "Max",
        "Max",
        "Max",
      ],
    },
  ];

  int currentIndex = 0;

  void _answerQuestion() {
    setState(() {
      currentIndex = currentIndex + 1;
    });
    print('$currentIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Column(
        children: [
          Question(questions[currentIndex]['question']),
          ...(questions[currentIndex]['answers'] as List<String>).map((answer) {
            return Answer(answer, _answerQuestion);
          }).toList(),
        ],
      ),
    );
  }
}
