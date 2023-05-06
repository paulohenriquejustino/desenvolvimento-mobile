import 'dart:io';

void main () {
  String nomeFuncionario;
  String cargoFuncionario;
  double salarioFuncionario;

  print('-'*70);
  stdout.write('Nome do funcionario: ');
  nomeFuncionario = stdin.readLineSync()!;
  stdout.write('Cargo ocupado: ');
  cargoFuncionario = stdin.readLineSync()!;
  stdout.write('Salário funcionario: ');
  salarioFuncionario = double.parse(stdin.readLineSync()!);
  print('-'*70);

  exibirCadastro(
    //Com parametro nomeado não importa a ordem
    cargo: cargoFuncionario,
    funcionario: nomeFuncionario,
    salario: salarioFuncionario
  );
}

//Declaração a funçao void
dynamic exibirCadastro(
  {
    //é necessario colocar o required (NullSafety)
    required String funcionario,
    required String cargo,
    required double salario
  })
  {
    // Saída
    print('-'*70);
    print('Nome do funcionario: $funcionario');
    print('Cargo: $cargo');
    print('Salário: $salario');
    print('');
  }