import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  BehaviorSubject<String> stc = new BehaviorSubject<String>();
  // stc.startWith('Paulo').listen(print);
  stc.startWithMany(['Paulo', 'Antonelli', 'Developer']).listen(print);

  stc.sink.add('Like');
  stc.sink.add('Dart');
}
