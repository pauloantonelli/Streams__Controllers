import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();

  stc.stream
      .asyncMap((e) => fakeRequest(e))
      .listen((onData) => print('Stream: $onData'));

  stc.sink.add('o');
}

Future<List<String>> fakeRequest(String query) async {
  print('query recebida: $query');
  await Future.delayed(Duration(microseconds: 500));
  return ['Jão', 'Paulo', 'Carlos', 'Daniel', 'Romário']
      .where((e) => e.contains(query))
      .toList();
}
