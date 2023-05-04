import 'dart:io';

void main() {
  int numero;
  
  stdout.write("Digite um número: ");
  numero = int.parse(stdin.readLineSync()!);
  
  if (numero % 2 == 0) {
    print("O número é par");
  } else {
    print("O número é ímpar");
  }
}
