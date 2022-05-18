
import 'dart:async';

import 'package:flutter/material.dart';



class FormModel extends ChangeNotifier {
  int questionIndex =0;
  List handle =[];
  PageController b = PageController();
  bool animation = false;
  bool loading = false;
  List actions =[];



  void answerQuestion(int a) {
    // totalScore+= score;
    questionIndex = a;

    notifyListeners();

  }
  void addColor(qIndex,answer){
    handle.add({"qIndex":qIndex ,"answer":answer});
    notifyListeners();
  }

  void animationcontroller(c) {
    animation = c;

    notifyListeners();

  }
  void loader(load){
    loading =load;

    notifyListeners();
  }
  void cardDialog(title,status){
    actions.add({"title":title,"status":status});
    notifyListeners();

  }

}
