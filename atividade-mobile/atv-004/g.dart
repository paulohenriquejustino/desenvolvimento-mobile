import 'dart:io';

void main() {
  // Declara uma lista vazia de Map.
  List<Map<String, dynamic>> itens = [];

  // Executa um laço infinito para apresentar as opções do menu ao usuário.
  while (true) {
    // Exibe as opções do menu na tela.
    print('Escolha uma opção:');
    print('1. Adicionar item');
    print('2. Exibir todos os itens');
    print('3. Buscar item por nome');
    print('4. Atualizar item');
    print('5. Remover item');
    print('6. Sair');
    // Lê a opção escolhida pelo usuário a partir da entrada padrão e converte para um inteiro.
    int opcao = int.parse(stdin.readLineSync()!);
    print('');

    // Usa uma instrução switch/case para executar o código correspondente à opção selecionada pelo usuário.
    switch (opcao) {
      case 1:
        // Adiciona um novo item à lista.
        // Solicita ao usuário que entre com o nome, idade e endereço do item e os armazena em variáveis separadas.
        print('Digite o nome:');
        String nome = stdin.readLineSync()!;
        print('Digite a idade:');
        int idade = int.parse(stdin.readLineSync()!);
        print('Digite o endereço:');
        String endereco = stdin.readLineSync()!;
        // Cria um novo mapa que representa o item e o adiciona à lista de itens.
        Map<String, dynamic> item = {'nome': nome, 'idade': idade, 'endereco': endereco};
        itens.add(item);
        // Exibe uma mensagem confirmando que o item foi adicionado com sucesso.
        print('Item adicionado com sucesso!');
        break;
      case 2:
        // Exibe todos os itens armazenados na lista.
        print('Itens:');
        for (int i = 0; i < itens.length; i++) {
          print('Nome: ${itens[i]['nome']}, Idade: ${itens[i]['idade']}, Endereço: ${itens[i]['endereco']}');
        }
        break;
      case 3:
        // Busca um item pelo nome.
        // Solicita ao usuário que entre com o nome do item a ser buscado e o procura na lista.
        print('Digite o nome do item a ser buscado:');
        String nome = stdin.readLineSync()!;
        Map<String, dynamic> item = itens.firstWhere((item) => item['nome'] == nome);
        if (item != null) {
          // Exibe as informações do item encontrado se ele existir.
          print('Nome: ${item['nome']}, Idade: ${item['idade']}, Endereço: ${item['endereco']}');
        } else {
          // Exibe uma mensagem de falha se o item não foi encontrado.
          print('Item não encontrado.');
        }
        break;
      case 4:
        // Atualiza um item existente.
        // Solicita ao usuário que entre com o nome do item a ser atualizado, o encontra na lista e solicita as novas informações.
        print('Digite o nome do item a ser atualizado:');
        String nome = stdin.readLineSync()!;
        int itemIndex = itens.indexWhere((item) => item['nome'] == nome);
        if (itemIndex != -1) {
          // Solicita as novas informações do item e cria um novo mapa.
          print('Digite o novo nome:');
          String novoNome = stdin.readLineSync()!;
          print('Digite a nova idade:');
          int novaIdade = int.parse(stdin.readLineSync()!);
          print('Digite o novo endereço:');
          String novoEndereco = stdin.readLineSync()!;
          Map<String, dynamic> itemAtualizado = {'nome': novoNome, 'idade': novaIdade, 'endereco': novoEndereco};
          // Substitui o item antigo pelo novo item na lista de itens.
          itens[itemIndex] = itemAtualizado;
          // Exibe uma mensagem confirmando que o item foi atualizado com sucesso.
          print('Item atualizado com sucesso!');
        } else {
          // Exibe uma mensagem de falha se o item não foi encontrado.
          print('Item não encontrado.');
        }
        break;
      case 5:
        // Remove um item existente da lista.
        // Solicita ao usuário que entre com o nome do item a ser removido e remove-o da lista.
        print('Digite o nome do item a ser removido:');
        String nome = stdin.readLineSync()!;
        itens.removeWhere((item) => item['nome'] == nome);
        // Exibe uma mensagem confirmando que o item foi removido com sucesso.
        print('Item removido com sucesso!');
        break;
      case 6:
        // Sai do programa.
        return;
      default:
        // Exibe uma mensagem de erro se o usuário entrou com uma opção inválida.
        print('Opção inválida.');
        break;
    }
    // Imprime uma linha em branco para separar as saídas entre as execuções.
    print('');
  }
}
