class Contato {
  String? nome;
  String? telefone;
  String? email;

  // Construtor padrão
  Contato({this.nome, this.telefone, this.email});

  // Construtor nomeado para criar um contato apenas com o nome
  Contato.apenasNome({this.nome}) {
    telefone = '';
    email = '';
  }

  // Construtor nomeado para criar um contato com nome e telefone
  Contato.nomeETelefone({this.nome, this.telefone}) {
    email = '';
  }

  // Construtor nomeado para criar um conteudo com nome e email
  Contato.nomeEEmail({this.nome, this.email}) {
    telefone = '';
  }

  // Metodo para exibir as informações do contato
  void exibirInformacoes(){
    print('Nome: $nome');
    print('Telefone: $telefone');
    print('Email: $email');
  }
}

void main() {
  // Usando o construtor padrão
  Contato contato1 = Contato(
    nome: 'Ph',
    telefone: '12345678',
    email: 'ph@gmail.com'
  );
  contato1.exibirInformacoes();
  print('');

  // Usando o construtor nomeado 'aepenasNome'
  Contato contato2 = Contato.apenasNome(nome: 'Maria');
  contato2.exibirInformacoes();
  print('');

  // Usando o construtor nomeado 'nomeETelefone'
  Contato contato3 = Contato.nomeETelefone(
    nome: 'Pedro',
    telefone: '1873456789',
  );
  contato3.exibirInformacoes();
  print('');

  // Usando o construtor nomeado 'nomeEEmail'
  Contato contato4 = Contato.nomeEEmail(
    nome: 'Ana',
    email: 'ana@gmail.com',
  );
contato4.exibirInformacoes();
}