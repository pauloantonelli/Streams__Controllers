import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  RangeStream(1, 50).listen((e) => print(e));
}
