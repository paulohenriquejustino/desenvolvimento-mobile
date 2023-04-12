void main() {
  int a  = 10;
  int b = 5;
  
  //Operador de soma
  int soma = a + b;
  //Operador de subtração
  int subtracao = a - b;
  // Operador de produto
  int produto = a * b;
  // Operador de divisão 
  double divisao = a / b;
  // Operador de divisão inteira
  int divInteira = a % b;
  // Operador de resto da divisão
  int restoDivisao = a ~/b;
  
  print('-'*70);
  print('A soma de $a + $b = $soma');
  print('A subtração de $a - $b = $subtracao');
  print('A multiplicação de $a x $b = $produto');
  print('A divisão de $a / $b = $divisao');
  print('A divisão  inteira de $a ~/ $b = $divInteira');
  print('O resto da divisão de $a % $b = $restoDivisao');
  
  
}
