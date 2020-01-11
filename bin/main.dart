import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  BehaviorSubject stcA = new BehaviorSubject();
  BehaviorSubject stcB = new BehaviorSubject();

  Stream _stream = stcA.mergeWith([stcB.stream]);

  _stream.listen(print);

  stcA.sink.add('Paulo');
  stcB.sink.add('Ricardo');
}
