import 'dart:io';
import 'dart:math';

void main() {
  print('-'*70);
  print('LISTA DE MÉTODOS PARA LISTAS');

  // add: adiciona um elemento ao final da lista.
  List<int> listaInteiros = [1, 2, 3];
  print('Lista original: $listaInteiros');
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');
  print('-'*70);

  // addAll: adiciona vários elementos ao final da lista.
  List<String> listaFrutas = ['banana', 'maçã', 'pera'];
  print('Lista original: $listaFrutas');
  listaFrutas.addAll(['Uva', 'goiaba', 'manga']);
  print('Lista nova: $listaFrutas');
  print('-'*70);
  
  // remove: remove um elemento específico da lista.
  List<String> listaNomes = ['João', 'Maria', 'José'];
  print('Lista original: $listaNomes');
  listaNomes.remove('João');
  print('Lista nova: $listaNomes');
  print('-'*70);

  // removeAt: remove um elemento pelo índice.
  List<double> listaDouble = [1.1, 2.2, 3.3];
  print('Lista original: $listaDouble');
  listaDouble.removeAt(1);
  print('Lista nova: $listaDouble');
  print('-'*70);
  

}