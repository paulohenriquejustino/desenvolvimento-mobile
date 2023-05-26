// Definição de classe Pessoa
class Pessoa {
  String? nome; //Declrando do atributo 'nome' do tipo String
  int? idade; // Declaração do atributo 'idade' do tipo int
  dynamic nascimento;

  // Construtor de classe Pessoa
  Pessoa(String nome, int idade, dynamic nascimento) {
    // Atribuição do parâmetro 'nome' ao atributo 'nome' da classe
    this.nome = nome;
    // Atribuição do parâmetro "idade" ao atributo 'idade' da classe
    this.idade = idade;
    // Atribuinção do parametro nascimento ao atributo nascimento da classe
    this.nascimento = nascimento;

  }

  // Método para exibir os dados da pessoa
  void exibirDados() {
    print('Nome: $nome'); // Impressão do valor do atributo 'nome'
    print('Idade: $idade'); // Impressão do valor do atributo 'idade'
    print('Nascimento: $nascimento'); // Impressao do valor do atributo nascimento
  }
}

// Uso da classe Pessoa
void main() {
  // Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa1 =  new Pessoa('Johnzin', 210, '');
  // Chamada do método exibirDados() da instância pessoal
  pessoa1.exibirDados();

  // Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa2 = new Pessoa('Jane Doe', 30, '');
  // Chamada do métoda exibirDados() da instãncia pessoa2
  pessoa2.exibirDados();

  Pessoa pessoa3 = new Pessoa('Ph', 19, '24/09/2003');
  pessoa3.exibirDados();
}