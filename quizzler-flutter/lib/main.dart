import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionIndex = 0;
  List<Icon> scoreKeeper = [];
  List<QuestionData> questions = [
    QuestionData('You can lead a cow down stairs but not up stairs.', false),
    QuestionData(
        'Approximately one quarter of human bones are in the feet.', true),
    QuestionData('A slug\'s blood is green.', true),
  ];

  List<Expanded> getQuestionFields(int index) {
    QuestionData currentQuestionData = questions[index];
    return [
      Expanded(
        flex: 5,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              currentQuestionData.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.green,
            child: Text(
              'True',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              handleAnswer(currentQuestionData.isTrue);
            },
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            color: Colors.red,
            child: Text(
              'False',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              handleAnswer(!currentQuestionData.isTrue);
            },
          ),
        ),
      )
    ];
  }

  void handleAnswer(bool isCorrect) {
    setState(() {
      scoreKeeper.add(Icon(
        isCorrect ? Icons.check : Icons.close,
        color: isCorrect ? Colors.green : Colors.red,
      ));
      questionIndex = min(questionIndex + 1, questions.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ...getQuestionFields(questionIndex),
        Wrap(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

class QuestionData {
  String text;
  bool isTrue;
  QuestionData(String text, bool isTrue) {
    this.text = text;
    this.isTrue = isTrue;
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
