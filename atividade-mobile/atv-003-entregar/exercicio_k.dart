import 'dart:io';
import 'dart:math';

void main () {
  print('Escolha uma opcção: ');
  print('1 - Adicionar um nome ');
  print('2 - Remover nome ');
  print('3 - Digite 3 para finalizar o progama ');

   // Criando uma lista vazia
  dynamic listaNomes = [];


  while (true) {

    int opcao = int.parse(stdin.readLineSync()!); 

     switch(opcao) {


    case 1:

      print('Digite um nome: ');
      String? nome = stdin.readLineSync()!;
      listaNomes.add(nome);
      print('O nome $nome foi adicionado na lista: $listaNomes');
      
      break;
    
    case 2:

    
      print('Digite o índice do nome que deseja remover: ');
      int indece = int.parse(stdin.readLineSync()!);
      if (indece < 0) {
        print('Digite um índice valido!');
      } else {
        listaNomes.removeAt(indece);
      } 
      break;

    case 3:
    print('Finalizando o progama....');
    break;
    }
    
     
    
  }

  }
  
