import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  BehaviorSubject<String> stcA = new BehaviorSubject<String>();
  BehaviorSubject<String> stcB = new BehaviorSubject<String>.seeded('Mundo');

  stcA.stream.pipe(stcB);
  stcA.sink.add('Ola');

  stcA.stream.listen((e) => print('Dados da stream A: $e'));
  stcB.stream.listen((e) => print('Dados da stream B: $e'));
}
