import 'dart:io';

void main() {
  // Lendo o número digitado pelo usuário
  stdout.write("Digite um número inteiro: ");
  int numero = int.parse(stdin.readLineSync()!);

  // Calculando o sucessor e o antecessor do número
  int sucessor = numero + 1;
  int antecessor = numero - 1;

  // Imprimindo os resultados
  print("O sucessor de $numero é: $sucessor");
  print("O antecessor de $numero é: $antecessor");
}
