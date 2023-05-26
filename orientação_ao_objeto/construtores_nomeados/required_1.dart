import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  // Construtor nomeado
  Pessoa({required this.nome, required this.idade});
}


void main() {
  // O genenic contem a classe Pessoa, ou seja, uma lista de objetos pessoas...
  List<Pessoa> pessoas = [];

  // Entrada de dados
  print('');
  for ( int i = 1; i <= 3; i++) {
    print('Lista de Pessoa: $i');

    // Recebendo nome
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    // Recebendo idade
    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    // Cria uma nova pessoa e adiciona na lista
    // Criando outra instancia...
    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade);
    pessoas.add(novaPessoa);

    print('');

  }

  // Exibe os dados das pessoas
  print('Dados das pessoas: ');
  print('-'*70);
  for (var pessoa in pessoas) {
    print('Nome: ${pessoa.nome}');
    print('Idade: ${pessoa.idade}');
    print('');
  }
}