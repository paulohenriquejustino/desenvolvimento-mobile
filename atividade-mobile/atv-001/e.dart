import 'dart:io';

void main() {
  // Lendo os dois números digitados pelo usuário
  stdout.write("Digite um número: ");
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite outro número: ");
  double numero2 = double.parse(stdin.readLineSync()!);

  // Realizando a divisão dos dois números
  double resultado = numero1 / numero2;

  // Formatando o resultado para exibir 4 casas decimais
  String resultadoFormatado = resultado.toStringAsFixed(4);

  // Imprimindo o resultado formatado na tela
  print("$numero1 dividido por $numero2 é igual a $resultadoFormatado");
}
