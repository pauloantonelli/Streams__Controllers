import 'package:rxdart/rxdart.dart';

void main() {
  PublishSubject primeiroFluxo = new PublishSubject();

  primeiroFluxo.stream.listen((data) {
    print(data);
  }, onDone: () => print('dados recuperados como sucesso!'));

  primeiroFluxo.sink.add(1);
  primeiroFluxo.sink.add(2);
  primeiroFluxo.sink.add(3);
  primeiroFluxo.close();
}
