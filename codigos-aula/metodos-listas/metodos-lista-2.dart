import 'dart:io';
import 'dart:math';

void main() {
  //Insert: insera um elemento em um índice específico
  List<String> listaArtistas = ['Fernada Torres', 'Paulo José', 'Rual Cortez'];
  print('Lista original: $listaArtistas');
  listaArtistas.insert(2, 'Grande Otelo');
  print('Lista nova: $listaArtistas');

  //InsertAll: insere vários elementos em um índice especifico.
  List<int> listaNumeros = [3, 4, 5];
  print('Lista original: $listaNumeros');
  listaNumeros.insertAll(0, [1, 2]);
  print('Lista nova: $listaNumeros');
  print('-'*70);

  // IndexOf: retorna o índice do primeiro elemento encontrando na lista.
  List<String> listaVogais = ['a', 'e', 'i', 'o', 'u', 'a', 'e', 'i', 'o', 'u'];
  print(listaVogais);
  print('A Primeira ocarrencia da vogal i: indice ${listaVogais.indexOf('i')}');

  // lastIndexOf: retorna o índice do ultimo elemento encontrado na lista.
  List<String> listaCarros = ['Fusca', 'Gol', 'Ferrari', 'Gol'];
  print(listaCarros);
  print('A última ocorrencia do gol: índice ${listaCarros.lastIndexOf('Gol')}');

}