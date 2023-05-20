import 'dart:io';
import 'dart:convert';

void main () {
  final caminho = File('teste1_json.txt');

  // Chamando minhas funções para obter na gravação!
  final mediaAritmeticValor = mediaAritimetica();
  caminho.writeAsStringSync('Média Aritmética: $mediaAritmeticValor\n', mode: FileMode.append);

  final mediaPonderadaValor = mediaPonderada();
  caminho.writeAsStringSync('Média Ponderada: $mediaPonderadaValor\n\n', mode: FileMode.append);

}

// Função para calcular a média aritmética...
double mediaAritimetica() {
  print('Calculando Média Aritmetica: ');
  print('');
  
  print('Digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro número: ');
  double num3 = double.parse(stdin.readLineSync()!);

  // Calculando a média aritmética
  double resultado = (num1 + num2 + num3) / 3;
  print('A média aritmética dos três números é: $resultado');
  return resultado;
}

// Função para calcular a média ponderada...
double mediaPonderada() {
  print('Calculando Média Ponderada: ');
  print('');

  print('Digite a primeira nota: ');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota: ');
  double nota3 = double.parse(stdin.readLineSync()!);

  // Definindo pesos para cada nota
  double peso1 = 2;
  double peso2 = 3;
  double peso3 = 5;

  // Calculando a média ponderada
  double somaNotas = nota1 * peso1 + nota2 * peso2 + nota3 * peso3;
  double somaPesos = peso1 + peso2 + peso3;
  double resultado = somaNotas / somaPesos;

  print('A média ponderada das três notas é: $resultado');
  return resultado;
}


