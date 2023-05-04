import 'dart:io';
import 'dart:math';

void main() {
  // Criando uma lista vazia
  dynamic listaNomes = [];

  // Criando uma flag para finalizar meu loop no CASE 3!
  bool flag = false;

  while (!flag) {
    print('Escolha uma opcção: ');
    print('1 - Adicionar um nome ');
    print('2 - Remover nome ');
    print('3 - Digite 3 para finalizar o progama ');

    int opcao = int.parse(stdin.readLineSync()!);

    if (listaNomes.length == 0 && opcao == 2) {
      // se o total de lista numeros for 0, é tambem opcao for igual a 2...
      print('A lista está vazia!');
      print('');
      break;
    }

    switch (opcao) {
      case 1:
        print('Digite um nome: ');
        String? nome = stdin.readLineSync()!;
        listaNomes.add(nome);
        print('O nome $nome foi adicionado na lista: $listaNomes');
        print("");

        break;

      case 2:
        print('Digite o índice do nome que deseja remover: ');
        int indece = int.parse(stdin.readLineSync()!);
        if (indece >= 0) {
          // se indece for menor igual a 0...
          listaNomes.removeAt(indece);
          print(
              'O nome do índece $indece foi removido com sucesso, sua nova lista: $listaNomes');
          print('');
        } else if (indece < 0) {
          // verificando o verdadeiro novamente....
          print('Digite um índice valido!');
          print('');
        }
        break;

      case 3:
        print('Nomes da lista:');
        for (String nome in listaNomes) {
          // para cada nome dentro da sua lista de nomes...
          print(nome);
        }
        print('Finalizando o progama....');
        flag = true; // utilizando flag para finalizar o progama...
        break;
      default:
        print('Opcão invalida');
        break;
    }
  }
}
