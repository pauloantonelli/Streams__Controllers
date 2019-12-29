import 'package:rxdart/rxdart.dart';

void main() {
  PublishSubject primeiroFluxo = new PublishSubject();

  primeiroFluxo.stream.listen((data) {
    print(data);
  });

  primeiroFluxo.sink.add(1);
  primeiroFluxo.sink.add(2);
  primeiroFluxo.sink.add(3);
}
