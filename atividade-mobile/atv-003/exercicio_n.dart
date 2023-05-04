import 'dart:io';
import 'dart:math';

void main() {

  // Criando uma lista vazia
  dynamic listaPar = [];
  // Criando uma flag para finalizar meu loop no CASE 3!
  bool flag = false;



  while(!flag) {
    print('Escolha uma opção: ');
    print('1 - Adicionar número par: ');
    print('2 - Remover número par ');
    print('3 - Digite 3 para finalizar o progama ');


    int opcao = int.parse(stdin.readLineSync()!);

    if (listaPar.length == 0 && opcao == 2) {
      print('Para remover um número, adicione primeiro em sua lista...');
      print('');
      break;
    }


    switch(opcao) {
      
      case 1:
        print('Digite um número par ');
        int numero = int.parse(stdin.readLineSync()!);
        if (numero % 2 == 0 ) {
          listaPar.add(numero);
          print('O número $numero digitado foi adicionado na lista: $listaPar');
        } else {
          print('Digite APENAS números pares!');
          print('');
        }
      break;
    
      case 2:
        print('Digite o índece do número par que deseja remover:  ');
        int indece = int.parse(stdin.readLineSync()!);
        if ( indece < 0) {
          print('Digite um índice valido!');
          print('');
        } else {
          listaPar.removeAt(indece);
          print('O item foi removido com sucesso, sua nova lista: $listaPar');
          print('');
        } if (listaPar.isEmpty) {
          print('Sua lista está vazia!');
          print('');
        }
      break;
      case 3:
       print('Itens da lista: ');
       for (int  numero in listaPar) {
        print('$numero');
       }
       print('Finalizando progama...');
       flag =  true;
       break;

      default:
        print('Opcão invalida');
        break;
    
    }

  }

}