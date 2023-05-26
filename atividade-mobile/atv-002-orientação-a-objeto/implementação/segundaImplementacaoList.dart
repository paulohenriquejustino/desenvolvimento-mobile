import 'dart:io';

class Pessoa {
  String nome;
  int idade;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.idade, required this.peso, required this.altura});

  double calcularImc() {
    return peso / (altura * altura);
  }

  String classificarImc(double imc) {
    if (imc < 18.5) {
      return "Abaixo do Peso";
    } else if (imc >= 18.5 && imc < 25) {
      return "Peso Normal";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau 1";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau 2";
    } else {
      return "Obesidade Grau 3";
    }
  }
}

void main() {
  List<Pessoa> pessoas = [];

  for (var i = 1; i <= 3; i++) {
    print('Pessoa $i:');

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write('Peso (kg): ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Altura (m): ');
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade, peso: peso, altura: altura);
    pessoas.add(novaPessoa);

    print('');
  }

  print('Dados das pessoas:');
  print('-' * 70);
  for (var pessoa in pessoas) {
    double imc = pessoa.calcularImc();
    String classificacao = pessoa.classificarImc(imc);

    print('Nome: ${pessoa.nome}');
    print('Idade: ${pessoa.idade}');
    print('IMC: ${imc.toStringAsFixed(2)}');
    print('Classificação: $classificacao');
    print('');
  }
}
