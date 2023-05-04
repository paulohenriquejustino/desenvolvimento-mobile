import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro: ");
  int numero = int.parse(stdin.readLineSync()!); // Lê o número digitado pelo usuário e converte para inteiro

  int resultado;

  if (numero % 2 == 0) { // se numero for divisivil por 2 com resto 0...
    resultado = numero + 5;
  } else {
    resultado = numero + 8;
  }

  print("O resultado é: $resultado");
}
