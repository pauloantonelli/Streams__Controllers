import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  RangeStream lista = new RangeStream(1, 50);

  RangeStream(1, 50)
      .switchMap((item) {
        print('switch: $item');
        return new TimerStream((item * 2), Duration(seconds: 2));
      })
      .debounce((e) => TimerStream(true, Duration(seconds: 3)))
      .listen((e) => print(e));
}
