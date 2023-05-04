import 'dart:io';

void main() {
  // Criando uma lista vazia para armazenar as notas
  List<double> notas = [];

  // Lendo as 4 notas digitadas pelo usuário
  for (int i = 0; i < 4; i++) {
    stdout.write("Digite a ${i+1}ª nota: ");
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  // Calculando a média das 4 notas
  double soma = 0;
  for (double nota in notas) {
    soma += nota;
  }
  double media = soma / notas.length;

  // Imprimindo a média na tela
  print("A média das notas é: $media");
}
