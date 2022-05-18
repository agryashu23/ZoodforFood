import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoodforfood/explore.dart';

import '../provider.dart';

class Answers extends StatefulWidget {

  const Answers({required this.answerText, required this.question, Key? key}) : super(key: key);
  final String answerText;
  final List question;



  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<FormModel>(builder: (context, cart, child) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        height: 50.0,
        child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),)
          ),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: const [Color(0xff374ABE), Color(0xff64B6FF)],
                  // [Colors.purple, Colors.blue] can also be used as per  background color
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              constraints:
              BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Text(
                widget.answerText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          onPressed: () {
            cart.animation = false;
            if (cart.questionIndex+1 == widget.question.length ) {
              print(cart.handle);
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) =>Explore()),
                      (Route<dynamic> route) => false);
            }
            else {
                cart.addColor(cart.questionIndex, widget.answerText);
                cart.answerQuestion(cart.questionIndex + 1);
            }
          },
        ),
      );
    });
  }
}

