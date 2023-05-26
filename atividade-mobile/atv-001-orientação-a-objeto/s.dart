import 'dart:async';
import 'dart:convert';
import 'dart:io';

class Calcular {
  // Atributos
  late double capital;
  late double taxa;

  // Método construtor...
  Calcular(this.capital, this.taxa);

  void calcularJuros() {
    double juros = capital * taxa;
    
    print('O valor dos juros é: $juros');
  }
}

void main() {
  // Entrada de dados
  stdout.write('Digite o capital inicial: ');
  double capital = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a taxa de juros: ');
  double taxa = double.parse(stdin.readLineSync()!);

  Calcular descobrir = Calcular(capital, taxa);
  descobrir.calcularJuros();
}
