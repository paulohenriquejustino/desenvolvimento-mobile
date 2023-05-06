import 'dart:io';

void main () {
  // Declarar uma variável e passar uma função
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);

  //Saída
  print('Média Arítmética');
  print('-'*70);
  print('A média é: $media');
  print('A divisão é: $divisao');

  //Calcular porcentagem
  double percent = 5;
  double valor =  100;

  double percentual = calcularPorcentagem(percent, valor);

  //Saída
  print('$percent% do $valor = $percentual');
}

// Declaração
double calcularMedia(double n1, double n2, double n3, double n4) {
  //Calculo
  double media = (n1 + n2 + n3 + n4) / 4;

  // Retorna com o valores
  return media;
}

double calcularDivisao(double n1, double n2) {
  double div = (n1 / n2);
  return div;
}

// Arrow Function
double calcularPorcentagem(percent, valor) => (percent * valor) / 100;