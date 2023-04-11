//Todo progama dart precisa ter a classe main()
void main() {
  //valores Inteiros
  int idade = 50;
  //valores com ponto flutuante
  double altura = 1.80;
  //Valores booleanos
  bool opcao = true;
  //valores string
  String nome = "Jhon Doe";

  /*
  IMPORTANTE: Não posso mudar o tipo já declarado 
  var teste ='josé';
  teste = 100;

  dart também trabalha com  inferência de valores
  var numero = 10 ==> numero é inteiro
  */

  //Uso de TEMPLATE STRING no print para dar saída
  print('-'*70);
  print('Meu nome é $nome, tenho $idade anos');
  print('Minha altura é ${altura.toStringAsFixed(2)}\m de altura.)');
  print("Esta é uma aula de dart? $opcao");
}