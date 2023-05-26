import 'dart:io';

class Triangulo {
  // Atrubutos
  double base;
  double altura;

  // Método construtor
  Triangulo(this.base, this.altura);

  // Método para calcular a area
  double calcularArea() {
    return (base * altura) / 2; // utilizando () para colocar a ação de multiplicação em primeiro lugar...
  }
}

void main () {
  //Entrada de dados
  print('');
  stdout.write('Digite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Iinstanciando o objeto
  Triangulo triangulo = Triangulo(base, altura);
  double area = triangulo.calcularArea(); // guardando o resultado da minha função em uma variavel!

  // Saída
  print('A área do triângulo é: $area');
  print('');
}