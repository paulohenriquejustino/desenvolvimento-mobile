import 'dart:io';

void main() {
  double metros;

  // Lendo a medida em metros digitada pelo usuário
  stdout.write("Digite uma medida em metros: ");
  metros = double.parse(stdin.readLineSync()!);

  // Realizando as conversões para centímetros e milímetros
  double centimetros = metros * 100;
  double milimetros = metros * 1000;

  // Imprimindo os resultados na tela
  print("$metros metros equivalem a:");
  print("$centimetros centímetros");
  print("$milimetros milímetros");
}
