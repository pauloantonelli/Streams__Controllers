import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();

  stc.stream
      .debounce((e) => TimerStream(true, Duration(seconds: 10)))
      .listen((onData) => print('Stream: $onData'));

  stc.sink.add(1);
  stc.sink.add(5);
}
