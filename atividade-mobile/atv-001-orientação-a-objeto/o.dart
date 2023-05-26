import 'dart:async';
import 'dart:convert';
import 'dart:io';

class Calcular {
  // Atributos
  late double num1;

  // Metodo construtor...
  Calcular(this.num1);

  double imparPar() {
    print('');
    
    if (num1 % 2 == 0) {
      double soma = num1 + 5;
      print('$soma');

    } else {
      double soma2 = num1 + 8;
      print('$soma2');
    }
    return num1;
  }

}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o número: ');
  double num1 = double.parse(stdin.readLineSync()!);
  
  Calcular descobrir = Calcular(num1);
  double guarda = descobrir.imparPar();


}
  

