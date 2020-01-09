import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController stc = new StreamController.broadcast();

  stc.stream
      .handleError(_handleError, test: meuTeste)
      .asyncMap((e) => fakeRequest(e))
      .listen((onData) => print('Stream: $onData'));

  stc.sink.add('o');
}

void _handleError(error, stackTrace) {
  print('Erro: $error');
}

bool meuTeste(erro) {
  if (erro is String) {
    return true;
  }
  return false;
}

Future<List<String>> fakeRequest(String query) async {
  print('query recebida: $query');
  await Future.delayed(Duration(microseconds: 500));
  // throw 'Deu Erro'; // gera erro na stream
  return ['Jão', 'Paulo', 'Carlos', 'Daniel', 'Romário']
      .where((e) => e.contains(query))
      .toList();
}
