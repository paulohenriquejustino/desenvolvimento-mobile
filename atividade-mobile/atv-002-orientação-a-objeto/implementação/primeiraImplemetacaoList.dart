import 'dart:io';

class Pessoa {
  // Atributos...
  String nome;
  int idade;
  double peso; 
  double altura; 

  // Utilizando metodo construtor
  Pessoa({required this.nome, required this.idade, required this.peso, required this.altura});

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

  // 'Colocando a class pessoas dentro da minha lista'
  List<Pessoa> pessoas = [];

  for (var i = 1; i <= 3; i++) {
    print('Lista de Pessoa: $i');

    // Recebendo nome
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;

    // Recebendo idade
    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    // Cria uma nova pessoa e adiciona na lista
    // Criando outra instancia...
    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade, peso: 0.0, altura: 0.0);
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
