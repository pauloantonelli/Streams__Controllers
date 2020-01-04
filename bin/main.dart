import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();
  Iterable lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final listaFiltradaTake = lista.take(3);
  print('take: $listaFiltradaTake');
  final listaFiltradaSkip = lista.skip(3);
  print('skip: $listaFiltradaSkip');

  stc.stream.take(2).listen((data) => print('take: $data'));
  stc.stream.skip(3).listen((data) => print('skip: $data'));
  stc.sink.add(1);
  stc.sink.add(2);
  stc.sink.add(3);
  stc.sink.add(4);
  stc.sink.add(5);
}
