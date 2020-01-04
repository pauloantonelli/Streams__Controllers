import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();

  stc.stream
      .asyncMap((e) => fakeRequest(e))
      .listen((onData) => print('Stream: $onData'));

  stc.sink.add('algum dado');
}

Future<List<int>> fakeRequest(String query) async {
  print('query recebida: $query');
  await Future.delayed(Duration(microseconds: 500));
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
}
