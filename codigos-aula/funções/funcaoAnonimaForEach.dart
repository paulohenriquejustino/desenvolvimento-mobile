void main () {
  print('-'*70);
  print('Exemplo de função Anonima: intermediária');

  var lista = [1, 2, 3, 4, 5];

  //utilizada com o método map()
  var novaLista = lista.map((numero) => numero * 2).toList();

  print(novaLista);
}