import 'dart:async';
import 'dart:convert';
import 'dart:io';


class Calcular {
  // Atributos
  late double num1;
  late double num2;

  // Metodo construtor...
  Calcular(this.num1, this.num2);

  void lendoNum() {
    print('');
    double soma = num1 + num2;
    double mult = num1 * num2;
    
    if (num1 == num2) {
      print('Os números são iguais. Soma: $soma');
    } else {
      print('Multplicação: $mult');
    }
  }

}


void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  
  Calcular descobrir = Calcular(num1, num2);
  descobrir.lendoNum();
}
