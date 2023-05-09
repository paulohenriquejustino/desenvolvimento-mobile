import 'dart:io';
import 'dart:math';

void main() {
  // Declarando minha flag para finalizar o programa...
  bool flag = false;
  
  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Verificar média aritmética: ');
    print('2 - Verificar média ponderada: ');
    print('3 - Verificar média harmônica: ');
    print('4 - Sair ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        // Chamando função e guardando o resultado em uma variável
        double resultado = mediaAritimetica();
        break;
      
      case 2:
        // Chamando a função e guardando o resultado em uma variável
        double resultado = mediaPonderada();
        break;

      case 3:
        // Chamando a função e guardando o resultado em uma variável
        double resultado = mediaHarmonica();
        break;

      case 4:
        // Encerrando o programa
        print('Finalizando o programa...');
        flag = true;
        break;

      default:
        // Caso o usuário selecione uma opção incorreta...
        print('Opção inválida');
        break;
    }
  }
}

// Função para calcular a média aritmética...
double mediaAritimetica() {
  print('Digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro número: ');
  double num3 = double.parse(stdin.readLineSync()!);

  // Calculando a média aritmética
  double resultado = (num1 + num2 + num3) / 3;
  print('A média aritmética dos três números é: $resultado');
  return resultado;
}

// Função para calcular a média ponderada...
double mediaPonderada() {
  print('Digite a primeira nota: ');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota: ');
  double nota3 = double.parse(stdin.readLineSync()!);

  // Definindo pesos para cada nota
  double peso1 = 2;
  double peso2 = 3;
  double peso3 = 5;

  // Calculando a média ponderada
  double somaNotas = nota1 * peso1 + nota2 * peso2 + nota3 * peso3;
  double somaPesos = peso1 + peso2 + peso3;
  double resultado = somaNotas / somaPesos;

  print('A média ponderada das três notas é: $resultado');
  return resultado;
}

// Função para calcular a média harmônica...
double mediaHarmonica() {
  
  print('Digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro número: ');
  double num3 = double.parse(stdin.readLineSync()!);

  // Calculando a média harmônica
  double resultado = 3 / (1 / num1 + 1 / num2 + 1 / num3);

  print('A média harmônica dos três números é: $resultado');
  return resultado;
}
