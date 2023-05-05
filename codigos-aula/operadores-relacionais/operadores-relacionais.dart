void main() {
  //Declarando variáveis
  int a = 20;
  int b = 5;
  
  // Verificando as variáveis
  print('-'*70);
  print('Resultado: ${a == b}');
  print('Resultado: ${a != b}');
  print('Resultado: ${a > b}');
  print('Resultado: ${a < b}');
  print('Resultado: ${a >= b}');
  print('Resultado: ${a <= b}');
  
  //Podemos atribuir esses resultados em uma variável
  bool igual = a == b;
  print('Verificando  de igualdade: $igual');
  print('-' * 70);
}