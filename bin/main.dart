import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();
  Iterable lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final listaFiltradaTake = lista.takeWhile((data) => data < 3);
  print('takeX: $listaFiltradaTake');
  final listaFiltradaSkip = lista.skipWhile((data) => data < 3);
  print('skip: $listaFiltradaSkip');

  stc.stream
      .takeWhile((data) => data < 3)
      .listen((data) => print('take stream: $data'));
  stc.stream
      .skipWhile((data) => data < 4)
      .listen((data) => print('skip stream: $data'));
  stc.sink.add(1);
  stc.sink.add(2);
  stc.sink.add(3);
  stc.sink.add(4);
  stc.sink.add(5);
}
