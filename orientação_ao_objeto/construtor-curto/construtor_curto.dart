class Animal {
  // Definição da classe Animal
  String nome;
  int idade;
  double peso;
  String raca;

  // Contrutor da classe Animal na forma curta
  Animal(this.nome, this.idade, this.peso, this.raca);

  // Metodo void para exibir informaçoes do animal
  void exibirInformacoes() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Peso: $peso');
    print('Raça: $raca');
    print('-'*60);
  }

  // Metodo com retorno para calcular a idade em meses
  int calcularIdadeMeses() {
    return idade * 12;
  }
}

void main() {
  // Instanciando um animal
  Animal animal = Animal('Chico', 8, 6.5, 'Pinscher');
  // Chamada do metodo exibirInformaçoes()
  animal.exibirInformacoes();
  // Chamada do metodo calcularIdadeMeses()
  int idadeMeses = animal.calcularIdadeMeses();
  print('Idade em meses: $idadeMeses');
  print('-'*70);
}

