void main() {
  print('1 - Número par');
  print('2 - Maior número');
  print('3 - Sair');

  int opcao = 2;

  switch (opcao) {
    case 1:
    
    int numero = 10;

    if (numero % 2 == 0) {
      print('O número $numero é par');
    } else {
      print('O número $numero é ímpar');
    }
    break;//Interrompe o case

    case 2:
    int a = 1;
    int b = 3;

    if (a > b) {
      print('O número $a é maior que o número $b!');
    } else if (a < b) {
      print('O número $a é menor que o número $b!');
    } else {
      print('O números são iguais!');
    }
    break;//Interrompe o case

  default:
  print('Fora do intervalo de opções');


  }
}