import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  var numero = double.parse(stdin.readLineSync()!); // Lê o número digitado pelo usuário

  double resultado;

  if (numero > 0) {
    resultado = numero * 2;
  } else {
    resultado = numero * 3;
  }

  print("O resultado é: $resultado");
}
