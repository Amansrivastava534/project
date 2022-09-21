import 'package:flutter/cupertino.dart';

class Question {
  String questionText='Hello';
  bool questionAnswer=true;

  Question({String q='',bool a=true}) {
    questionText = q;
    questionAnswer = a;
  }
}

