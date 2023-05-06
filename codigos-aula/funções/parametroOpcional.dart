void main () {
  // Declaraçoes
  int valor1 = 10;
  int valor2 = 20;

  // Segundo valor será opcional []
  // se eu deletar o segundo parametro
  // de função abaixo, valor 0 será atribuido
  // em seu lugar.
  int resultadoSoma = somaValores(valor1); // valor 2 apagado...

  // Saída
  print('O resultado dos valores somados: $resultadoSoma');
}
  // 1 parametro obrigatorio e 1 parametro opcional
  int somaValores(int valor1, [int valor2 = 5]){
    // se não informar o valor 2
    // o parametro assume 0
    print('Valor 1: $valor1');
    print('Valor 2: $valor2');

    return valor1 + valor2; // utilizando o return para fazer a soma...
  }

