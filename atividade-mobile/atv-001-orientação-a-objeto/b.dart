import 'dart:io';

class Calculos {
  // Atribuitos
  late int num1;
  late int num2;

  // Metodo construtor
  Calculos(this.num1, this.num2);

  // Criando os calculos(utilizando metodos)
  int calcularSoma() {
    return num1 + num2;
  }

  int calcularProduto(){
    return num1 * num2;
  }

  double calcularDivisao(){
    return num1 / num2;
  }

  int calcularRestoDivisao(){
    return num1 % num2;
  }

  int divisaoInteira(){
    return num1 ~/ num2;
  }
}

void main () {
  //Entrada de dados
  print('');
  stdout.write('Digite o primeiro número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);

  Calculos somatorio =  Calculos(num1, num2,);
  int guardar1 = somatorio.calcularSoma();
  int guardar2 = somatorio.calcularProduto();
  double guardar3 = somatorio.calcularDivisao();
  int guardar4 = somatorio.calcularRestoDivisao();
  int guardar5 = somatorio.divisaoInteira();

  print('Soma: $guardar1');
  print('Produto: $guardar2');
  print('Divisão: $guardar3');
  print('Resto da divisão: $guardar4');
  print('Divisão inteira: ');

 
  
}