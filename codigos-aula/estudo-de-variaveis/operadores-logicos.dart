void main() {
  //Declarando as variáveis
  int a = 20;
  int b = 6;
  int c =  7;

  //Verificando verdadeiro
  bool proposicao1 = a > b;
  bool proposicao2 = b < c;

  //Saída
  print('Parte Verdadeiro ');
  //
  print('${proposicao1 && proposicao2}');
  //
  print('${proposicao1 || proposicao2}');
  
  print('-'*70);
   // Verificando o falso
  bool proposicao3 =  a < b;
  bool proposicao4 = b > c;
  
  
  //Saída
  print('Parte Falso');
  print('${proposicao3 && proposicao4}');
  print('${proposicao3 || proposicao4}');
  
  
  //Negar um valor
  bool v = true;
  bool f = false;
  
  print('-'*70);
  //Saída
  print('Negando');
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');

  
  
}
