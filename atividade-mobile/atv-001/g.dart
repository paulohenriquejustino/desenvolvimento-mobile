import 'dart:io';

void main() {
  // Lendo o número digitado pelo usuário
  stdout.write("Digite um número: ");
  double numero = double.parse(stdin.readLineSync()!);

  // Calculando o dobro e o triplo do número
  double dobro = numero * 2;
  double triplo = numero * 3;

  // Imprimindo os resultados
  print("O dobro de $numero é: $dobro");
  print("O triplo de $numero é: $triplo");
}
