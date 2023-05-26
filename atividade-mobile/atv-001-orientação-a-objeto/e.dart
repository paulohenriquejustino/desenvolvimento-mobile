import 'dart:io';


class Calcular {
  // Atributos
  late double num1;
  late double num2;


  // Metodo construtor...
  Calcular(this.num1, this.num2);

  double calcularDivisao() {
    double divisao = num1 / num2;
    print('');
    print('A Divisão é: ${divisao.toStringAsFixed(4)}');
    return divisao;
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o primeiro número: ');
  double num1= double.parse(stdin.readLineSync()!);

  stdout.write('Digite o primeiro número: ');
  double num2 = double.parse(stdin.readLineSync()!);



  Calcular descobrirDiv = Calcular(num1, num2);
  double guardaDiv = descobrirDiv.calcularDivisao();
}
  

