import 'dart:io';

void main() {
  print('1 - Atividade P');
  print('2 - Atividade Q');
  print('3 - Atividade S');

  int opcao = int.parse(stdin.readLineSync()!); // fazendo a conversão de string para int

  switch (opcao) {

    case 1:

      print('Digite um número inteiro: ');
      int primeironumero = int.parse(stdin.readLineSync()!);
      print('');
      print('Digite um número inteiro: ');
      int segundonumero = int.parse(stdin.readLineSync()!);
      print('');
      int terceironumero = int.parse(stdin.readLineSync()!);
      print('');



      if(primeironumero < segundonumero) {
        
      } if (segundonumero < terceironumero) {
        print('$primeironumero $segundonumero $terceironumero');
      } else {
        print('');
      }
      break;

    // Adicione os outros cases aqui...

    default:
      print('Opção inválida');
  }
}
