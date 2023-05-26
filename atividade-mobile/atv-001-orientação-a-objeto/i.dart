import 'dart:io';

class Calcular {
  // Atributos
  late int num1;
  
  // Metodo construtor...
  Calcular(this.num1);

  List<int> variasOperacoes() {
    return [num1 * 1, num1 * 2, num1 * 3, num1 * 4, num1 * 5, num1 * 6, num1 * 7, num1 * 8, num1 * 9, num1 * 10];
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite um número: ');
  int num1= int.parse(stdin.readLineSync()!);
  
  // Criando objeto Calcular e chamando o método variasOperacoes()
  Calcular calcular = Calcular(num1);
  List<int> tabuada = calcular.variasOperacoes();
  
  // Imprimindo resultado
  print(tabuada);
}
