import 'dart:io';

void main () {
  print('1- SOMA');
  print('2- PRODUTO');
  print('3- SUBTRAÇÃO');
  print('4- DIVISÃO');
  print('5- DIVISÃO INTEIRA');
  print('6- RESTO DA DIVISÃO');

  int opcao = int.parse(stdin.readLineSync()!); // fazendo a conversão de string para int

  switch (opcao) {
    
    case 1:

    print('Digite o primeiro número: ');
    int a = int.parse(stdin.readLineSync()!); //função
    print('');// pular linha
    print('Digite o segundo número: ');
    int b = int.parse(stdin.readLineSync()!); //função

    int soma = a + b;
    print('Resultado: $soma');
    break;//Fim do case


    case 2 :

    print('Digite o primeiro número: ');
    int a = int.parse(stdin.readLineSync()!); //função
    print('');// pular linha
    print('Digite o segundo número: ');
    int b = int.parse(stdin.readLineSync()!); //função

    int produto = a * b; 
    print('Resultado: $produto');
    break;//Fim do case
  }

}