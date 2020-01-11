import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  TimerStream('Ola mundo', Duration(seconds: 2)).listen(print);
}
