import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main() {
  final lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final listaFiltrada = lista.where((data) => data > 3);
  print(listaFiltrada);
}
