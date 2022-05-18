import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({Key? key,required this.questionText}) : super(key: key);
  final String questionText;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  late Animation<Offset> _animation;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(25,0,25, 20),
      // padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        widget.questionText,
        style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}
