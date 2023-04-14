import 'dart:io';

void main() {
  print('1 - Atividade P - Ordem decrescente');
  print('2 - Atividade Q - IMC');
  print('3 - Atividade S - Juros');

  int opcao = int.parse(stdin.readLineSync()!); // fazendo a conversão de string para int

  switch (opcao) {
    case 1:
      print('Digite o primeiro número: ');
      int a = int.parse(stdin.readLineSync()!); //função

      print('');// pular linha
      print('Digite o segundo número: ');
      int b = int.parse(stdin.readLineSync()!); //função

      print('');// pular linha
      print('Digite o terceiro número: ');
      int c = int.parse(stdin.readLineSync()!); //função
      print('');

      if (a > b && b > c) { // se A for maior que B, é  B maior que C...
        print("$a, $b, $c");
      } else if (a > c && c > b) { // se A for maior que C, é C for maior que B...
        print("$a, $c, $b");
      } else if (b > a && a > c) { // Se B for maior que A, é A for maior que C...
        print("$b, $a, $c");
      } else if (b > c && c > a) { // Se B for maior que C, é C for maior que A...
        print("$b, $c, $a");
      } else if (c > a && a > b) { // Se C for maior que A, é A for maior que B...
        print("$c, $a, $b");
      } else {
        print("$c, $b, $a");
      }
      break;// Fim do case

    case 2 :
      stdout.write("Digite o seu peso: ");
      double peso = double.parse(stdin.readLineSync()!); //função

      print('');// pular linha
      stdout.write("Digite a sua altura: ");
      double altura = double.parse(stdin.readLineSync()!); //função

      double imc = peso / (altura * altura); // formula do IMC
      print("O IMC da pessoa é: ${imc.toStringAsFixed(5)}");
      break; // Fim do case


    case 3:

    stdout.write('Digite a taxa de juros: ');
    double taxa = double.parse(stdin.readLineSync()!); // função 
    print('');
    stdout.write('Qual foi o seu capital: ');
    double capital = double.parse(stdin.readLineSync()!); // função
    print('');
   

    double taxaconvertida = taxa / 100; 
    double calculo = (capital * taxaconvertida) / 100;
    double soma = capital + calculo;
    
    print("O valor do juros a ser pago é de: ${calculo.toStringAsFixed(2)}");
    print('');
    print("O valor total a ser pago será de  ${soma.toStringAsFixed(2)}");
    break; // Fim do case


    
  }
}
