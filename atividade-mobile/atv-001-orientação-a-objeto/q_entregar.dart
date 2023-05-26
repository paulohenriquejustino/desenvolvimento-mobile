import 'dart:io';

class Pessoa {
  // Atributos...
  String nome;
  int idade;
  double peso; 
  double altura; 

  // Utilizando metodo construtor
  Pessoa(this.nome, this.idade, this.peso, this.altura);

  // Função de retorno para calcular IMC
  double calcularImc() {
    return peso / (altura * altura);
  }

  String classificarImc(double imc) { // Uitlizando metodo da instancia da classe Pessoa, que retorna o valor do imc
  // utilizando peso e altura recebidios...
  
    if (imc < 18.5) { // se imc for menor 18.5...
      return "Abaixo do Peso";
    } else if (imc >= 18.5 && imc < 25) { // e se imc for maior ou igual a 18.5, é tambem imc for menor que 25...
      return "Peso Normal";
    } else if (imc >= 25 && imc < 30) { // e se imc for menor ou igual a 25, é tambem imc for menor que 30...
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) { // e se imc for menor ou igual a 30, é tambem imc for menor 35...
      return "Obesidade Grau 1";
    } else if (imc >= 35 && imc < 40) { // e se imc for menor ou igual a 35, é tambem imc for menor 40...
      return "Obesidade Grau 2";
    } else {
      return "Obesidade Grau 3"; // caso nao estiver dentro de nenhum tentativa acima...
    }
  }
}

void main() {
  // Entrada de dados
  stdout.write('Digite seu nome: ');
  String nome = stdin.readLineSync()!;
  
  stdout.write('Digite sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);
  
  stdout.write('Digite seu peso (em kg): ');
  double peso = double.parse(stdin.readLineSync()!);
    
  stdout.write('Digite sua altura (em metros): ');
  double altura = double.parse(stdin.readLineSync()!);
  
  // Criando uma instancia da classe Pessoa
  Pessoa pessoa = Pessoa(nome, idade, peso, altura);
  
  // Chamando o metodo calcularImc()  da classe Pessoa
  double imc = pessoa.calcularImc();
  // Classificando o IMC com base no valor calculado...
  String classificacao = pessoa.classificarImc(imc);
  
  // Saida...
  print("\nNome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Peso: ${pessoa.peso} kg");
  print("Altura: ${pessoa.altura} m\n");
  print("IMC: ${imc.toStringAsFixed(2)}");
  print("Classificação: $classificacao");
}
