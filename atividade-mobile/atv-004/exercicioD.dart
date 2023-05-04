import 'dart:io'; // Importando biblioteca

void main() {
  Map<String, dynamic> produto = {}; // Cria um mapa vazio para armazenar os produtos (chave: nome do produto, valor: valor do produto)

    for (int i = 0; i < 5; i++) { // Executa um loop que permite inserir dados de até 5 produtos
      stdout.write('Digite o nome do produto ${i + 1}: ');
      String nome = stdin.readLineSync()!; // Lê o nome do produto digitado pelo usuário


      stdout.write('Digite o valor do produto ${i + 1}: ');
      int valor = int.parse(stdin.readLineSync()!); // Lê o valor do produto digitado pelo usuário e converte para inteiro


      produto[nome] = valor; // Insere o par chave-valor (nome do produto - valor do produto) no mapa "produto"
      
    }
    produto.forEach((nome, valor) { // Itera sobre todos os itens do mapa "produto" e exibe seus valores na tela
      print('Produtos:$nome: Valor:$valor');
    });
  

}