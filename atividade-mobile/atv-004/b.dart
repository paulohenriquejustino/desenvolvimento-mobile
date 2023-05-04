import 'dart:io';
import 'dart:math';

void main() {
  Map<int, String> nomes = {}; // Declarando meu Map vazio
  for (int i = 0; i < 10; i++) { // fazendo uma contagem (estrutula de controle 'for classico'.)
    stdout.write('Digite o ${i + 1}º nome (ou "sair" para finalizar): ');
    String? nome = stdin.readLineSync();
    if (nome == 'sair') { // se o nome for igual a sair...
      break;
    }
    nomes[i] = nome!; // atribuindo o valor digitado pelo usuario
  }
  int i = 1; // declaração para incrementação..
  nomes.forEach((chave, valor) { // fazendo uma varredura no meu Map...
    print('O ${i++ }º nome $valor');  // fazendo uma incrementação na minha saida de dados utilizando variavel declarada 'i'.
  });
}
