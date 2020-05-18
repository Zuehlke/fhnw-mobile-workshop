import 'package:flutter/material.dart';

class AareData {
  final String source; //set by server
  final double temperature;
  final double flow;
  final double height;
  final String date;

  AareData(
      {@required this.source,
      @required this.temperature,
      @required this.flow,
      @required this.height,
      @required this.date});
}

// Beispieldaten:
//{"source":"BAFU","temperature":15.9,"flow":124.84,"height":502.21,"date":"2019-09-10 11:20:00"}
