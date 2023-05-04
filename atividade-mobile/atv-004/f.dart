import 'dart:io';

void main() {
  // Criando o mapa com as capitais
  Map<String, String> capitais = {
    'Tocantins': 'Palmas',
    'Sergipe': 'Aracaju',
    'Piauí': 'Teresina'
  };

  int acertos = 0; // variavel iteradora para calcular meus acertos

  while (true) {
    for (String estado in capitais.keys) { // para cada estado dentro do map capitais...
      print('Qual é a capital de $estado?');
      String resposta = stdin.readLineSync()!;

      if (resposta.toLowerCase() == capitais[estado]!.toLowerCase()) { // se minha resposta for igual a capital do meu determinado estado....
        print('Acertou!');
        acertos++; // Incrementa o número de acertos
      } else {
        print('Resposta incorreta. A capital é ${capitais[estado]}');
      }
    }

    print('Você acertou $acertos de ${capitais.length} questões.');

    print('Deseja jogar novamente? (s/n)');
    String escolha = stdin.readLineSync()!;
    if (escolha.toLowerCase() != 's') break; // Sai do loop se a resposta não for 's'

    // Reinicia o contador de acertos
    acertos = 0;
  }
}
