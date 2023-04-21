import 'dart:io';

void main () {
  List<String> listaAlunas = [
    'Cythia', 
    'Ivone',
    'Izabelly',
    'Priscila'
  ];


  int i = 1; // controlador para adiconar um numero para cada nome.
  for (var aluna in listaAlunas) {
    print('Aluna ${i++}: $aluna');
  }
  print('-'*70);
  //Podemos usar fatiamento como na linguagem Python
  print('${listaAlunas[0]}, também conhecida como ${listaAlunas[3]}');
  print('${listaAlunas[3]}, também conhecida como ${listaAlunas[0]}');
}