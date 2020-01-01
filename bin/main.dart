import 'package:rxdart/rxdart.dart';

void main() {
  BehaviorSubject primeiroFluxo = new BehaviorSubject.seeded(0);

  primeiroFluxo.stream.listen((data) {
    print(data);
  });
  primeiroFluxo.sink.add(1);
  primeiroFluxo.sink.add(2);
  primeiroFluxo.sink.add(3);
  primeiroFluxo.sink.add(4);
  print('behavior value: ${primeiroFluxo.value}');
}
