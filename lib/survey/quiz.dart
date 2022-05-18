import 'dart:async';
import 'dart:typed_data';

import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:zoodforfood/provider.dart';
import 'package:zoodforfood/survey/questions.dart';

import '../utils/slider.dart';
import 'answer.dart';
import 'dart:ui' as ui;

class GeneralQuiz extends StatefulWidget {
  const GeneralQuiz({Key? key}) : super(key: key);

  @override
  State<GeneralQuiz> createState() => _GeneralQuizState();
}

class _GeneralQuizState extends State<GeneralQuiz> {
  ui.Image? customImage;
  double sliderValue = 0.0;

  Future<ui.Image> loadImage(String assetPath) async {
    ByteData data = await rootBundle.load(assetPath);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetHeight: 40, targetWidth: 40);
    ui.FrameInfo fi = await codec.getNextFrame();

    return fi.image;
  }

  @override
  void initState() {
    super.initState();
    _loadImage = loadImage('assets/images/food2.png');
  }

  late Future<ui.Image> _loadImage;

  final questions = [
    {
      'questionText': ' Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook'},
        {'text': 'Adobe'},
        {
          'text': 'Google',
        },
        {'text': 'Microsoft'},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit'},
        {'text': 'IOS Development Kit'},
        {'text': 'Web Development Kit'},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby'},
        {
          'text': 'Dart',
        },
        {'text': 'C++'},
        {'text': 'Kotlin'},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {
          'text': 'Lars Bak and Kasper Luck',
        },
        {'text': 'Brendan Eich'},
        {'text': 'Bjarne Stroustrup'},
        {'text': 'Jeremy Ashkenas'},
      ],
    },
    {
      'questionText': 'Q6. How do you feel about Meditation',
      'answers': [
        {'text': 'Good'},
        {'text': 'Bad'},
        {'text': 'Healthier'},
        {'text': 'Strong'},
      ],
    },
    {
      'questionText':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
        },
        {
          'text': 'No',
        },
        {
          'text': 'Nop',
        },
        {
          'text': 'Nope',
        },
      ],
    },
  ];
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Consumer<FormModel>(builder: (context, cart, child) {
      var wSize = MediaQuery
          .of(context)
          .size
          .width;
      var hSize = MediaQuery
          .of(context)
          .size
          .height;
      _timer = Timer(const Duration(milliseconds: 800), () {
        cart.animationcontroller(true);
        _timer?.cancel();
      });
      double percent = 0.0;

      final int percentCont = questions.length - 1;

      percent = ((1.0 / percentCont) * cart.questionIndex).toDouble();

      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: FutureBuilder<ui.Image>(
            future: _loadImage,
            builder: (context, snapshot) {
              if (snapshot.hasData || snapshot.data != null) {
                return Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.purple, Colors.blue])),
                    ),

                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: hSize*0.07,horizontal: 10),
                          // padding: EdgeInsets.all(30.0),
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 28,
                              inactiveTrackColor: Colors.grey.shade300,
                              activeTrackColor: Colors.blue,
                              thumbShape: SliderThumbImage(snapshot.data!),
                            ),
                            child: Slider(
                              value: percent,
                              min: 0.0,
                              max: 1.0,
                              onChanged: (setup) {
                                // setState(() {
                                //   value = setup;
                                //
                                // });
                              },
                            ),
                          ),
                        ),
                        Question(
                          questionText: questions[cart.questionIndex]
                                  ['questionText']
                              .toString(),
                        ), //Question
                        ...(questions[cart.questionIndex]['answers']
                                as List<Map<String, Object>>)
                            .map((answer) {
                          return Answers(
                              answerText: answer['text'].toString(),
                              question: questions);
                        }).toList()
                      ],
                    ),

                    // ),
                  ],
                );
              }
              return CircularProgressIndicator();
            }

            // Provide an optional curve to make the animation feel smoother.

            ),
      );
    });
  }
}
