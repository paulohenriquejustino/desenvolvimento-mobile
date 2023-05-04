import 'dart:io';

void main() {
  print('-' * 70);
  print('EXERCÍCIO M: ADD, REMOVEAT, SWITCH, VERIFICAÇÃO DE LISTA VAZIA, VALIDADE DE ÍNDICE E FOR IN');
  print('-' * 70);

  List<String> listaCompras = [];
  String? opcao;

  while (opcao != "sair") {
    print("\nEscolha uma opção:");
    print("1 - Adicionar item");
    print("2 - Remover item");
    print("sair - Sair do programa");

    opcao = stdin.readLineSync()!;

    switch (opcao) {
      case "1":
        stdout.write("Digite um item: ");
        String item = stdin.readLineSync()!;
        listaCompras.add(item);
        print("Item adicionado com sucesso!");
        break;
      case "2":
        if (listaCompras.isEmpty) {
          print("Não há itens na lista.");
        } else {
          stdout.write("Digite o índice do item que deseja remover: ");
          int indice = int.parse(stdin.readLineSync()!);
          if (indice < 0 || indice >= listaCompras.length) {
            print("Índice inválido.");
          } else {
            listaCompras.removeAt(indice);
            print("Item removido com sucesso!");
          }
        }
        break;
      case "sair":
        print("Itens da lista:");
        for (String item in listaCompras) {
          print(item);
        }
        print("Programa finalizado.");
        break;
      default:
        print("Opção inválida.");
        break;
    }
  }
}