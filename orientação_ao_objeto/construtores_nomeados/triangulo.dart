import 'dart:io';
import 'dart:math';

class Triangulo {
  // Atributos
  double cateto1;
  double cateto2;

  // Metodo construtor: uso das chaves para os parametros opcionais
  Triangulo({this.cateto1 = 0, this.cateto2 = 0});

  // Metodo que calcula o valor da hipotenusa
  double calculaHipotenusa() {
    return sqrt(pow(cateto1, 2) + pow(cateto2, 2));
  }
}

void main() {
  // Instanciando um objeto
  Triangulo triangulo = Triangulo(cateto1: 10, cateto2: 20);
  // Invocando o metodo para calcular a hipotenusa
  double hipotenusa = triangulo.calculaHipotenusa();

  // Instanciando um objeto sem argumento para testa
  // o parametro opcional da linha 10.
  Triangulo triangulo2 = Triangulo();
  double hipotenusa2 = triangulo2.calculaHipotenusa();

  // Saida
  print('A hipotenusa do primeiro triangulo é: $hipotenusa');
  print('A hipotenusa do segundo triangulo é: $hipotenusa2');
  print('A hipotenusa do segundo trianglo e zero porque');
  print('O parametro opcional da linha 10 é zero(0)!');
  print('');


  
  
}