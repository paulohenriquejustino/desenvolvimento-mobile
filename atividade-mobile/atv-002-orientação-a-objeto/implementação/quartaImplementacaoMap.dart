import 'dart:io';

class Pessoa {
  // Atributos...
  String nome;
  int idade;
  double peso;
  double altura;

  // Metodo construtor...
  Pessoa({required this.nome, required this.idade, required this.peso, required this.altura});

  // Função de retorno para calcular o imc...
  double calcularImc() {
    return peso / (altura * altura);
  }

  String classificarImc(double imc) {
    // Verificando os valor do imc com condicionais...
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
  // Criando meu map é inserindo minha class
  Map<int, Pessoa> pessoas = {};

  // Utilizando o for para gerar pessoas... (contador...)
  for (var i = 1; i <= 3; i++) {
    print('Pessoa $i:');

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write('Peso: ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Altura: ');
    double altura = double.parse(stdin.readLineSync()!);

    // Criando uma nova instania
    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade, peso: peso, altura: altura);
    pessoas[i] = novaPessoa; // substituindo o antigo valor do map pelo o novo!
    print('');
  }

  print('Dados das pessoas:');
  print('-' * 70);
  pessoas.forEach((key, pessoa) { // varrendo meu mapa...
    double imc = pessoa.calcularImc(); // chamando minha função para calcular o imc
    String classificacao = pessoa.classificarImc(imc);

    // Saída de dados
    print('Pessoa $key:');
    print('Nome: ${pessoa.nome}');
    print('Idade: ${pessoa.idade}');
    print('IMC: ${imc.toStringAsFixed(2)}');
    print('Classificação: $classificacao');
    print('');
  });
}
