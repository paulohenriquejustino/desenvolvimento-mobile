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
      print('$num1 é par');
    } else {
      print('$num1 é impar');
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
  double guardaKm = descobrir.imparPar();


}
  

