import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  StreamController<Pessoa> stc = new StreamController<Pessoa>.broadcast();

  stc.stream
      .distinct((before, current) =>
          before.nome.endsWith('o') && current.nome.endsWith('o'))
      .listen((onData) => print('Stream ${onData.nome}'));
  stc.sink.add(Pessoa(nome: 'João'));
  stc.sink.add(Pessoa(nome: 'João'));
  stc.sink.add(Pessoa(nome: 'Carlos'));
  stc.sink.add(Pessoa(nome: 'Carlos'));
  stc.sink.add(Pessoa(nome: 'Mário'));
  stc.sink.add(Pessoa(nome: 'Romário'));
}

class Pessoa {
  String nome;
  int idade;
  Pessoa({this.nome, this.idade});
}
