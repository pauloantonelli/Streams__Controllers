import 'package:rxdart/rxdart.dart';

void main() {
  BehaviorSubject<int> b = new BehaviorSubject<int>.seeded(12);
  Stream<String> stream = new Stream<String>.value('abc');
  // b.sink.add(1);
  b.stream.listen(print);

  stream.listen(print);
}
