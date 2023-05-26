class Conta {
  // Definição ( atribuitos ) da classe Conta...
  late String titular;
  late double saldo;
  
  // Contrutor de classe Conta
  Conta(String titular, double saldoInicial) {
    this.titular = titular;
    this.saldo = saldoInicial;
  }
  // Metodo para realiza um deposito na conta
  void depositar(double valor) {
    saldo += valor; // Incrementa o valor ao saldo da conta
    print('Depósito de $valor realizado. Novo saldo: $saldo');
    print('-'*70);
  }
  // Método para realizar um saque na conta
  void sacar(double valor) {
    if(saldo >= valor) {
      saldo -= valor; // Decrementa o valor do saldo da conta
      print('Saque de $valor realizado. Novo saldo: $saldo');
      print('');
    } else {
      print('Saldo insuficiente. Operação não realizada.');
      print('-'*70);
    }
  }
  // Metodo para exibir o saldo da conta
  void exibirSaldo() {
    print('Saldo atual: $saldo');
    print('');
  }
}

// Uso da classe Conta
void main() {
  // Criação de uma instância da classe Conta com o construtor
  Conta cliente1 = Conta('Jhon', 100.0);
  // Chamada do metodo exibirSaldo() da instancia minhaConta
  cliente1.exibirSaldo();
  // Chamada do metodo depositar da instancia minhaConta
  cliente1.depositar(0.0);
  //Chamada do metodo sacar da minha instancia minhaConta
  cliente1.sacar(200.0);
  //Chamada do metodo exibirSaldo() da instacia minhaConta
  cliente1.exibirSaldo();
}