import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();
  Iterable lista = [
    [1, 2, 3],
    [4],
    [5, 6, 7],
    [8, 9],
    [10]
  ].expand((data) => data);
  print('array: $lista');

  stc.stream
      .expand((data) => data)
      .map((data) => data * 2)
      .listen((onData) => print('Stream $onData'));
  stc.sink.add([1, 2, 3]);
  stc.sink.add([4]);
  stc.sink.add([5, 6, 7]);
  stc.sink.add([8, 9]);
  stc.sink.add([10]);
}
