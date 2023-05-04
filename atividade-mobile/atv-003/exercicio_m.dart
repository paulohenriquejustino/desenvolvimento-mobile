import 'dart:io';
import 'dart:math';

void main() {

  // Criando uma lista vazia
  dynamic listaItem = [];
  // Criando uma flag para finalizar meu loop no CASE 3!
  bool flag = false;



  while(!flag) {
    print('Escolha uma opção: ');
    print('1 - Adicionar um item ');
    print('2 - Remover um item ');
    print('3 - Digite 3 para finalizar o progama ');


    int opcao = int.parse(stdin.readLineSync()!);


    switch(opcao) {
      
      case 1:
      
        print('Digite o item que deseja adicionar na lista: ');
        String item = stdin.readLineSync()!;
        listaItem.add(item);
        print('O item $item foi adicionado na lista: $listaItem');
        break;

      case 2:

        print('Digite o índice do item que deseja remover: ');
        int indece =  int.parse(stdin.readLineSync()!);
        if (indece < 0) {
          print('Digite um índice valido!');
        } else  {
          listaItem.removeAt(indece);
          print('O item foi removido com sucesso, sua nova lista: $listaItem');
        } if (listaItem.isEmpty) {
          print('Sua lista está vazia');
        }
        break;
      
      case 3:
        print("Itens da lista:");
        for (String item in listaItem) {
          print(item);
        }
        print('Finalizando progama...');
        flag = true;
        break;
      default:
        print('Opcão invalida');
        break;
    
    }

  }

}