import 'package:rxdart/rxdart.dart';

void main() {
  ReplaySubject primeirFluxo = new ReplaySubject();

  primeirFluxo.sink.add(1);
  primeirFluxo.stream.listen((data) => print('print $data'));
  primeirFluxo.sink.add(2);
  primeirFluxo.sink.add(3);

  print('Replay Subject values: ${primeirFluxo.values}');
}
