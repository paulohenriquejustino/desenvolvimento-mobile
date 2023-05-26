class entradaDeDados { // criando minha class...
  String? mundo; // declarando o atritubo mundo

  // Construtor...
  entradaDeDados(String mundo) {
    // Atribuindo o parametro mundo ao atributo mundo...
    this.mundo = mundo;
  }
  void exibirDados(){ // Criando uma função void para mostra na tela...
    print('$mundo');
  }
}

void main () {
  entradaDeDados ola = entradaDeDados('Olá Mundo');
  ola.exibirDados(); // invocando minha função...
}