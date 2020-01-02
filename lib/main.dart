import 'package:flutter/material.dart';
import './questin.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//underscore makes the class private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

   final questions = const[
      {
        'questionText': 'What\'s your favourite color',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\'s your favourite instructor',
        'answers': ['max', 'Max', 'Max', 'Max']
      }
    ];
  void _answerQuestion() {

    if(_questionIndex < questions.length){
      print('object');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),  
      body: Column(
        children: <Widget>[
          Question(
            questions[_questionIndex]['questionText']
            ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
