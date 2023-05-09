import 'dart:io';
import 'dart:math';

void main() {
  // Declarando minha flag para finalizar o progama...
  bool flag = false;
  
  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Calcular Potencia: ');
    print('2 - Digite 2 para finalizar o progama ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        //  Chamando a função e guardando o resultado em uma variavel...
        int resultado = potenciaNumero();
        print('O resultado é $resultado');
        break;
      
      case 2:
        print('Finalizando programa...');
        flag = true; // utilizando flag para finalizar o programa...
        break;
        
      default:
        // caso o usuário selecione uma opção que não existe
        print('Opção inválida');
        break;
    }
  }
}

// Função para ler e retornar a base da potência digitada pelo usuário
int baseNumero() {
  print('Digite a base: ');
  String input = stdin.readLineSync()!;
  int base = int.parse(input);
  
  // Retornando a base...
  return base;
}

// Função para ler e retornar o expoente da potência digitado pelo usuário
int expoenteNumero() {
  // Exibindo mensagem para o usuário digitar o expoente
  print('Digite o expoente: ');
  
  // Lendo o expoente digitado pelo usuário e convertendo para inteiro
  String input = stdin.readLineSync()!;
  int expoente = int.parse(input);
  
  // Retornando o expoente lido do usuário
  return expoente;
}

int potenciaNumero() {
  // Chamando minhas funções
  int base = baseNumero();
  int expoente = expoenteNumero();

  // Utilizando a função pow...
  dynamic resultado = pow(base, expoente);

  // Retornando o resultado da potência calculada
  return resultado;
}
