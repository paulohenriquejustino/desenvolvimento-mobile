import 'dart:io';
import 'dart:math';

void main() {
  Map<int, String> numeros = {}; // Declarando meu Map vazio
  for (int i = 0; i < 10; i++) {
    stdout.write('Digite o ${i + 1}º número inteiro: ');
    String? numero = stdin.readLineSync(); // entrada de dados...

    numeros[i] = numero!; // atribuindo o valor digitado pelo usuario
  }
  int i = 1; // declaração para incrementação..
  numeros.forEach((chave, valor) { // fazendo uma varredura no meu Map...
    print('O ${i++ }º numero: $valor'); // fazendo uma incrementação na minha saida de dados utilizando variavel declarada 'i'.
  });
}
