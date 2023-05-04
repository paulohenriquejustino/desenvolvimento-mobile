import 'dart:io';
import 'dart:math';

void main () {
  // Declarando um Map vazio...
  Map<String, double> listaNotas = {};

  // Entrada de dados...
  print('Digite o nome do aluno: ');
  String nome = stdin.readLineSync()!;
  print('');

  // Estrutura de controle for...
  for (int i = 0; i < 4; i++) {
    stdout.write('Digite a nota ${i + 1} do aluno $nome: ');
    double notaAluno = double.parse(stdin.readLineSync()!);
    listaNotas['Nota ${i + 1}'] = notaAluno; // adicionando minhas notas dentro do meu map...
  }

  listaNotas.forEach((chave, valor) { // varrendo o meu map buscando cada nota e seu valor.
    print('$chave: $valor');
  });

  double soma = listaNotas.values.reduce((soma, nota) => soma + nota); // somando todas as notas utilizando reduce...
  print('Soma das notas: $soma');
  
}

