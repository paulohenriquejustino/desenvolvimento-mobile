import 'dart:io';

void main() {
  int numero;

  // Lendo o número digitado pelo usuário
  stdout.write("Digite um número inteiro para ver sua tabuada: ");
  numero = int.parse(stdin.readLineSync()!);

  // Imprimindo a tabuada do número informado
  print("Tabuada do $numero");
  
  for (int i = 1; i <= 10; i++) {
    print("$numero x $i = ${numero * i}");
  }
}
