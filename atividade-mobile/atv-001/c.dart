import 'dart:io';

void main() {
  // Pedindo ao usuário que digite o ano de nascimento
  stdout.write("Digite o seu ano de nascimento: ");
  int anoNascimento = int.parse(stdin.readLineSync()!);

  // Calculando a idade do usuário
  int anoAtual = DateTime.now().year;
  int idade = anoAtual - anoNascimento;

  // Exibindo a idade do usuário
  print("A sua idade é: $idade anos.");
}
