import 'dart:io';
import 'dart:math';

void main() {
  // Criando uma lista vazia
  dynamic listaFruta = [];
  // Criando uma flag para finalizar meu loop no CASE 3!
  bool flag = false;

  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Adicionar uma fruta');
    print('2 - Remover uma fruta');
    print('3 - Digite 3 para finalizar o progama ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite a fruta que deseja adicionar na lista: ');
        String fruta = stdin.readLineSync()!;
        listaFruta.add(fruta);
        print('A fruta $fruta foi adicionado na lista: $listaFruta');
        break;

      case 2:
        print('Digite o índice da fruta que deseja remover: ');
        int indece = int.parse(stdin.readLineSync()!);
        if (indece < 0) {
          // se indece for menor que 0...
          print('Digite um índice valido!');
        } else {
          listaFruta.removeAt(indece);
          print(
              'A fruta foi removido com sucesso, sua nova lista: $listaFruta');
        }
        if (listaFruta.isEmpty) {
          /// se lista fruta estiver vazia....
          print('Sua lista está vazia');
        }
        break;

      case 3:
        print("Frutas dentro da lista:");
        for (String fruta in listaFruta) {
          // para item dentro da minha lista de fruta...
          print(fruta);
        }
        print('Finalizando progama...');
        flag = true; // utilizando flag para finalizar o progama...
        break;
      default:
        print('Opcão invalida');
        break;
    }
  }
}
