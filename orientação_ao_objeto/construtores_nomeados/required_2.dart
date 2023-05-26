import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  // Criando uma lista com atributo interesses...
  List<String>? interesses;

  // Utilizando "required" para indicar que o argumento e obrigatorio...
  // this.interesses não em argumento obrigatorio...
  Pessoa({required this.nome, required this.idade, this.interesses});
}

void main () {
  List<Pessoa> pessoas = [];

  for ( int i = 1; i <= 3; i++) {
    print('Lista de Pessoas: $i');
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;
    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    // Recebendo interresses...
    stdout.write('Interresses (seprados por vírgula): ');
    String interessesInput = stdin.readLineSync()!;
    // Utilizando Split para separar os interreses...
    List<String> interesses = interessesInput.split(',');

    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade, interesses: interesses);
    pessoas.add(novaPessoa); 
  }

  print('-'*70);
  print('Dados das pessoas: ');
  for (var pessoa in pessoas) {
    print('Nome: ${pessoa.nome}');
    print('Idade: ${pessoa.idade}');
    // Preciso do ! na propriedade interresse por causa do Nullsafety
    print('Interesses: ${pessoa.interesses!.join(',')}');
    print('');
  }
}