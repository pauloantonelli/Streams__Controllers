import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  Stream stream = Stream.value(
      'a'); // emite um valor, que depois de escutado morre a instancia da stream
  stream.listen(
    print,
    onDone: () => print('Terminei de receber os dados do observable!'),
  );

  BehaviorSubject behavior = new BehaviorSubject();
  StreamSubscription subscription = behavior.listen(print);
  behavior.sink.add(10);
  behavior.sink.add(20);
  subscription.pause();
  behavior.sink.add(30);
  subscription.resume();
  subscription
      .onData((dados) => print('sobreescrevi o .listen, dados: $dados'));
}
