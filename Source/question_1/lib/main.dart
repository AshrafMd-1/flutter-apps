import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());
/*void main(){
 runApp(MyApp());
}*/

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      home: Text("Hello!"),
    );*/
    var questions = [
      {
        "questionText": "what is your favorite color?",
        "answers": ["black", "red", "green", "white"],
      },
      {
        "questionText": "what is your favorite animal?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
      },
      {
        "questionText": "who is your favorite instructor?",
        "answers": ["max", "max", "max", "max"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        //body: Text("This is my default text"),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            //Text(questions[_questionIndex]),
            Question(
              questions[_questionIndex]["questionText"] as String,
            ),
            //Text(questions.elementAt(0)),
            //Text(questions[0]),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
            // Answer(_answerQuestion),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()

            /*RaisedButton(
              child: Text("answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("answer 2"),
              //onPressed: answerQuestion,
              onPressed: () => print("answer 2 chosen"),
            ),
            RaisedButton(
              child: Text("answer 3"),
              //onPressed: answerQuestion,
              onPressed: () {
                // lines of huge codes
                print("answer 3 chosen");
              },
            ),
            */
          ],
        ),
      ),
    );
  }
}
