void main () {
  print('-'*70);
  print('Exemplo de Função Anonima: Básica');
  print('');

  List<int> numeros = [1, 2, 3, 4, 5];

  //Em uma varredura forEach para retorna o dobro dos números
  numeros.forEach((numero) {
    print(numero * 2);
  });
}