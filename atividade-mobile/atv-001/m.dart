import 'dart:io';

void main() {
  int a, b, c;
  
  stdout.write("Digite o valor de A: ");
  a = int.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o valor de B: ");
  b = int.parse(stdin.readLineSync()!);
  
  if (a == b) {
    c = a + b;
  } else {
    c = a * b;
  }
  
  print("O resultado é: $c");
}
