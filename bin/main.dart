import 'package:rxdart/rxdart.dart';

void main() {
  Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
      .interval(Duration(seconds: 1))
      .listen(print);
}
