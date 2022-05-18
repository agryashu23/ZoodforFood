import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:zoodforfood/database.dart';
import 'package:zoodforfood/exploringpage.dart';
import 'package:zoodforfood/mainscreen.dart';
import 'package:zoodforfood/loading.dart';
import 'package:zoodforfood/provider.dart';
import 'package:zoodforfood/survey/quiz.dart';
import 'package:zoodforfood/utils/slider.dart';
import 'explore.dart';
import 'homepage.dart';
import 'otp.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // final appleSignInAvailable = await AppleSignInAvailable.check();
  runApp(
      ChangeNotifierProvider(
        create: (context) => FormModel(),
        child: const MyApp(),
      )
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPAge(),
    );
  }
}

