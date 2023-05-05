import 'dart:io';
import 'dart:math';

void main () {
  
  
  print('''
        1 - RAIZ QUADRADA - SQRT 
        2 - POTÊNCIA - POW
        3 - SENO DE UM ÂNGULO - SIN
        4 - COSSENO DE UM  ÂNGULO - COS
        5 - TANGENTE DE UM ÂNGULO  - TAN
        6 - LOGARITMO NATURAL DE UM NÚMERO - LOG
        7 - VALOR MÁXIMO DE DOIS VALORES NUM - MAX
        8 -  VALOR MÍNIMO DE DOIS VALORES NUM - MIN
        ''');

        int opcao = int.parse(stdin.readLineSync()!); // fazendo a conversão de string para int

        switch (opcao) {

          case 1 : 

          double x = 25;
          double raiz = sqrt(x);
          print('-'*70);
          print('A raiz quadrada de $x = $raiz');
          print('-'* 70);
          break;

          case 2 :
          print('Calculadora de potências');
          print('Digite a base:');
          double base = double.parse(stdin.readLineSync()!); // lê a base como uma string e converte para um número double
          print('Digite o expoente:');
          double expoente = double.parse(stdin.readLineSync()!); // lê o expoente como uma string e converte para um número double
          dynamic resultado = pow(base, expoente);// Utilizando o dynamic para receber qualquer tipo de valor, ele vai se adpatar ao valor digitado.
          print('$base elevado a $expoente é igual a $resultado');
          break;

          case 3 :
          double graus;
          double radianos;
          print('Digite o valor do ângulo em graus:');
          graus = double.parse(stdin.readLineSync()!); // lê o valor do ângulo como uma string e converte para um número double
          radianos = graus * pi / 180; // converte o valor do ângulo de graus para radianos
          double seno = sin(radianos); // calcula o seno do ângulo em radiano
          print('O seno de $graus graus é ${seno.toStringAsFixed(2)}'); // imprime o resultado com duas casas decimais
          break;

          case 4:
          
          double graus;
          double radianos;
          print('Digite o valor do ângulo em graus:');
          graus = double.parse(stdin.readLineSync()!); // lê o valor do ângulo como uma string e converte para um número double
          radianos = graus * pi / 180; // converte o valor do ângulo de graus para radianos
          double cosseno = cos(radianos); // calcula o cosseno do ângulo em radianos
          print('O cosseno de $graus graus é ${cosseno.toStringAsFixed(2)}'); // imprime o resultado com duas casas decimais
          break;

          case 5:

          double graus;
          double radianos;
          print('Digite o valor do ângulo em graus:');
          graus = double.parse(stdin.readLineSync()!); // lê o valor do ângulo como uma string e converte para um número double
          radianos = graus * pi / 180; // converte o valor do ângulo de graus para radianos
          double tangente = tan(radianos); // calcula a tangente do ângulo em radianos
          print('A tangente de $graus graus é ${tangente.toStringAsFixed(2)}'); // imprime o resultado com duas casas decimais
          break;

          case 6:

          double numero;

          print('Digite o valor do número: ');
          numero = double.parse(stdin.readLineSync()!);

          














        }


}