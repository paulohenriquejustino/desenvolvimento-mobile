import 'dart:io';
import 'dart:math';

void main() {
  // Criando uma lista vazia
  dynamic listaNumeros = [];

  // Criando uma flag para finalizar meu loop no CASE 3!
  bool flag = false;

  while (true) {
    // enquanto for verdadeiro...

    print('Escolha uma opcção: ');
    print('1 - Adicionar um número ');
    print('2 - Remover um número ');
    print('3 - Digite 3 para finalizar o progama ');

    int opcao = int.parse(stdin.readLineSync()!);

    if (listaNumeros.length == 0 && opcao == 2) {
      // se o total de lista numeros for 0, é tambem opcao for igual a 2...
      print('A lista está vazia!');
      print('');
      continue;
    }

    switch (opcao) {
      case 1:
        print('Digite um número: ');
        int numero = int.parse(stdin.readLineSync()!);
        listaNumeros.add(numero);
        print('O número $numero foi adicionado na lista: $listaNumeros');
        print('');
        break;

      case 2:
        print('Digite o índice do número que deseja remover: ');
        int indece = int.parse(stdin.readLineSync()!);
        if (indece >= 0) {
          // se o indece for menor ou igual a 0...
          listaNumeros.removeAt(indece);
          print(
              'O número do índece $indece foi removido com sucesso, sua nova lista: $listaNumeros');
          print('');
        } else if (indece < 0) {
          // verificando novamento o verdadeiro...
          print('Digite um índice valido!');
          print('');
        }
        break;

      case 3:
        print('Itens da lista:');
        for (int item in listaNumeros) {
          // para cada item dentro da lista de numeros...
          print(item);
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
