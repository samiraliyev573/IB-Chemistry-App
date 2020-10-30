import 'package:IB_Chemsitry_App/drawerPages/testyourselfscreen.dart';
import 'package:IB_Chemsitry_App/quiz_brain.dart';
import 'package:flutter/material.dart';

class TestYourselfDoneScreen extends StatefulWidget {
  int chapterNumber;
  TestYourselfDoneScreen(@required this.chapterNumber);
  @override
  _TestYourselfDoneScreenState createState() => _TestYourselfDoneScreenState();
}

class _TestYourselfDoneScreenState extends State<TestYourselfDoneScreen> {
  QuizBrain brain;
  List<String> questions = List<String>();
  List<String> answers = List<String>();
  void initState() {
    super.initState();
    brain = QuizBrain(widget.chapterNumber);
    print("Bank length: ${brain.getQuestionBankLength()}");
    print("Question:  ${brain.getQuestionText()}");
    print("Answer: ${brain.getQuestionAnswer()}");
    print("");
    for (var i = 0; i < brain.getQuestionBankLength() - 1; i++) {
      questions.add(brain.getQuestionText());
      answers.add(brain.getQuestionAnswer());
      brain.nextQuestion(context, widget.chapterNumber);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text('Go back home')),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: questions.length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: ListTile(
                        title: Text(questions[index]),
                        subtitle: Text(answers[index]),
                      ));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//ListTile(
//title: Text(questions[index]),
//subtitle: Text(answers[index]),
//);
