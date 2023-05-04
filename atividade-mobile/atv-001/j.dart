import 'dart:io';

void main() {
  double valorReal, valorDolar, valorEuro, valorWon;
  
  // Lendo o valor em reais
  stdout.write("Digite o valor em reais: ");
  valorReal = double.parse(stdin.readLineSync()!);

  // Convertendo para dólares
  valorDolar = valorReal / 5.27;

  // Convertendo para euros
  valorEuro = valorReal / 6.22;

  // Convertendo para wons
  valorWon = valorReal / 0.0047;

  // Imprimindo os resultados na tela
  print("Com R\$ $valorReal é possível comprar:");
  print("US\$ $valorDolar dólares.");
  print("€ $valorEuro euros.");
  print("₩ $valorWon wons.");
}
