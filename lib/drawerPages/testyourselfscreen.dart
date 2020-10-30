import 'dart:async';

import 'package:IB_Chemsitry_App/drawerPages/testyourselfdoneScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../quiz_brain.dart';

class TestYourselfScreen extends StatefulWidget {
  final int chapterNumber;
  TestYourselfScreen({this.chapterNumber});

  @override
  _TestYourselfScreenState createState() => _TestYourselfScreenState();
}

QuizBrain quizBrain;

class _TestYourselfScreenState extends State<TestYourselfScreen> {
  int questionBankLength;
  String totalQuestion;
  @override
  void initState() {
    super.initState();
    quizBrain = QuizBrain(widget.chapterNumber);
    try {
      questionBankLength = (quizBrain.getQuestionBankLength() - 1);
      totalQuestion = questionBankLength.toString();
    } catch (e) {
      print(e);
    }
    startTimer();
  }

  List<Icon> scoreKeeper = [];
  Color chosenColor = Color(0xFF243151);

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      quizBrain.nextQuestion(context, widget.chapterNumber);
    });
  }

  Timer _timer;
  int _start = 2700;

  void startTimer() {
    const oneSec = const Duration(milliseconds: 900);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            alert("Out of Time", "Your Time has run out");
            _timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  void alert(String title, String desc) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: title,
      desc: desc,
      buttons: [
        DialogButton(
          child: Text(
            "Answers",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TestYourselfDoneScreen(widget.chapterNumber);
          })),
          color: Color.fromRGBO(0, 179, 134, 1.0),
        ),
        DialogButton(
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pushNamed(context, '/home'),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minute = ((_start) ~/ 60);
    int second = (_start % 60);
    var linearPercent = LinearPercentIndicator(
      alignment: MainAxisAlignment.center,
      width: MediaQuery.of(context).size.width * 0.75,
      animation: true,
      lineHeight: MediaQuery.of(context).size.height * 0.05,
      animationDuration: _start * 1000,
      percent: 1.0,
      linearGradient: LinearGradient(colors: [
        Color(0xFFFC4F6C),
        Color(0xFFDF5CA6),
        Color(0xFFDF5CA8),
        Color(0xFFB46FFB),
        Colors.purple[400]
      ]),
      linearStrokeCap: LinearStrokeCap.roundAll,
      center: Text(
        '$minute:$second',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
      ),
      animateFromLastPercent: true,
      clipLinearGradient: true,
      fillColor: Color(0xFF3E4665),
      backgroundColor: Color(0xFF252C4A),
      restartAnimation: true,
    );

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF252C4A),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF3E4665), width: 5),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: MediaQuery.of(context).size.width * 0.81,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      linearPercent,
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          FontAwesomeIcons.clock,
                          color: Color(0xFFA9B0D0),
                          size: MediaQuery.of(context).size.height * 0.04,
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Color(0xFF8E98BD)),
                          children: [
                            TextSpan(
                                text:
                                    'Question  ${quizBrain.getQuestionNumber() + 1}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                            TextSpan(
                                text: '/' + totalQuestion,
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                      ),
                      Text(
                        '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                        style:
                            TextStyle(color: Color(0xFF8E98BD), fontSize: 10),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 15,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      quizBrain.getQuestionText(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Montserrat-Bold'),
                    ),
                  ],
                )),
            Expanded(
              flex: 24,
              child: Column(
                children: <Widget>[
                  testContainer(size, quizBrain.getChoice1()),
                  testContainer(size, quizBrain.getChoice2()),
                  testContainer(size, quizBrain.getChoice3()),
                  testContainer(size, quizBrain.getChoice4()),
                ],
              ),
            ),
            SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.down,
                physics: BouncingScrollPhysics(),
                reverse: true,
                scrollDirection: Axis.horizontal,
                child: Row(children: scoreKeeper)),
          ],
        ),
      ),
    );
  }

  GestureDetector testContainer(Size size, String text) {
    return GestureDetector(
      onTap: () {
        chosenColor = Color(0xFF234A6B);
        checkAnswer(text);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: size.width,
          height: size.height * 0.08,
          decoration: BoxDecoration(
            color: Color(0xFF243151),
            border: Border.all(color: Color(0xFF234A6B), width: 5),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
