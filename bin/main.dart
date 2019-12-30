import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController streamController = StreamController.broadcast();

  streamController.stream.listen((data) => print('stream sem map: $data'));
  streamController.stream
      .map((data) {
        return data * 2;
      })
      .where((data) => data > 4)
      .listen((data) => print('stream transformada: $data'));
  streamController.sink.add(1);
  streamController.sink.add(2);
  streamController.sink.add(3);
  streamController.sink.add(4);
  streamController.sink.add(5);

  Iterable listaMapeada = [1, 2, 3, 4, 5];
  print(listaMapeada.map((data) {
    return data * 2;
  }).where((data) => data > 3));

  Iterable caixaAlta = ['a', 'b', 'c', 'd'];
  streamController.sink.add(caixaAlta.map((data) {
    return data.toUpperCase();
  }));
}
