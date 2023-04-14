import 'dart:io';

void main() {
  for (int i = 1; i <=5; i++) { //inicia um loop com variável i que começa em 1 e incrementa em 1 a cada iteração até chegar em 5.
    print(i);//Quebra de linha
  }

  for (int i = 1; i <= 5; i++) { // inicia um loop com variável i que começa em 1 e incrementa em 1 a cada iteração até chegar em 5.
    stdout.write('$i');//Sem quebra de linha
  }

}