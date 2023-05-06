void main () {
  print('-'*70);
  print('Exemplo de função Anonima: Avançada');
  print('');

  var lista = [1, 2, 3, 4, 5];

  //.isOdd é uma propriedade fornecida pela classe int em dart
  // que retorna true se o numero for impar e false se for par;
  var novaLista = lista
  .where((numero) {return numero.isOdd;}) // busca
  .map((numero) => numero * 2).toList(); // retorna com cálculo

  print(novaLista);
}