import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  BehaviorSubject<String> stcA = new BehaviorSubject<String>();
  BehaviorSubject<String> stcB = new BehaviorSubject<String>.seeded('Mundo');

  stcA.sink.add('Olá Mundo');

  stcA.stream.listen((e) => stcB.sink.add(e));
  stcB.stream.listen((e) => print('Dados da stream B: $e'));
}
