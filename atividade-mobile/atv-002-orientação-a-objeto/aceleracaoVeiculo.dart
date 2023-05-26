import 'dart:io';

class Veiculo {
  int acelerarCarro;
  int freiarCarro;

  // Construtor nomeado(required)
  Veiculo({required this.acelerarCarro, required this.freiarCarro});
}

void main() {
  // Acelerando o fusca
  for (var i = 0; i < 110; i++) { // contador de 1 a 110 
    if (i % 10 == 0) { // se i for divisivel por 10 com resto 0
      print('Acelerando o Fusca: $i Km. ');
    } if (i == 100) { // se i for igual a 100
      print('Fudeu o Fusca chegou aos: $i Km.');
    } 
  
    // Freiando o fusca
    if ( i == 100) { // se i for igual a 100
      for (var f = 100; f >= 0; f--) { // contador de 100 a 0...
        if ( f % 10 == 0) { // se f for igual a 10 com resto 0...
          print('Freiando o Fusca: $f Km.');
        } 
      }
    }
  }
}
