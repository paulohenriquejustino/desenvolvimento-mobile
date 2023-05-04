import 'dart:io';
import 'dart:math';

void main() {
  //Flag para finalizar meu case..
  bool flag = false;

  // Declarando meu Map
  Map<String, String> listaNomesTelefones = {}; 

  // inicioando minha estrutura de controle... 
  while (!flag) { // com a utilização da flag, faz que o while fique sempre com condição verdadeira...
    print('Escolha uma opção: ');
    print('1 - Inserir nome e telefone: ');
    print('2 - Exibir lista de nomes e telefones');
    print('3 - Sair ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite o nome: ');
        String nome = stdin.readLineSync()!;
        print('');

        print('Digite o telefone: ');
        String telefone = stdin.readLineSync()!;

        print('Pressione Enter para continuar ou digite "sair" para sair');
        dynamic sair = stdin.readLineSync()!.toLowerCase().trim();
        print(sair);
        if (sair == 'sair') {
          flag =  true; // utilizando minha flag para finalizar meu progama...
          break;
        }
        listaNomesTelefones[nome] = telefone; // guardando o nome e o telefone dentro do meu Map...
        break;
  
      case 2:
        for (var nome in listaNomesTelefones.keys) { // para cada nome dentro do meu map de nomes e telefone mostre os valores...
          print('Nome: $nome  Telefone: ${listaNomesTelefones[nome]}');
          print('');
        }
        break;
      
      case 3:
      print('Finalizando o progama...');
      flag = true; // utilizando minha flag para finalizar meu progama...
      break;

    }
  }
}
