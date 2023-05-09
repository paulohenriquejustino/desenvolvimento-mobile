import 'dart:io';
import 'dart:math';

void main() {
  // Declarando minha flag para finalizar o progama...
  bool flag = false;
  
  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Verificar se um número é positivo: ');
    print('2 - Verificar se o número é negativo: ');
    print('3 - Verificar se o número é zero: ');
    print('4 - Sair ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
      
      int resultado = numeroPositivo();
      break;
      
      case 2:
      //  Chamando a função e guardando o resultado em uma variavel...
      int resultado = numeroNegativo();
      break;

      case 3:
      //  Chamando a função e guardando o resultado em uma variavel...
      int resultado = numeroZero();
      break;

      case 4:
      print('Finalizando o progama...');
      flag = true;
      break;
        
      default:
        // caso o usuário selecione uma opção que não existe
        print('Opção inválida');
        break;
    }
  }
}

// Função para ler e retornar se um número e positivo...
int numeroPositivo() {
  print('Digite um número inteiro: ');
  String input = stdin.readLineSync()!;
  int positivo = int.parse(input);
  if (positivo  >= 0){
    print('O número e inteiro: $positivo');
    print('');
  }
  else {
    print('Digite apenas números inteiros!');
    print('');
  }
  // Retornando o positivo...
  return positivo;
}

// Função para ler e retornar o expoente da potência digitado pelo usuário
int numeroNegativo() {
  // Exibindo mensagem para o usuário digitar o expoente
  print('Digite um número inteiro : ');
  // Lendo o expoente digitado pelo usuário e convertendo para inteiro
  String input = stdin.readLineSync()!;
  int negativo = int.parse(input);
  if (negativo < 0) {
    print('O número e negativo: $negativo');
    print('');
  }
  else {
    print('Esse número não e negativo');
    
  }
  return negativo;
}

int numeroZero() {
  print('Digite um número inteiro: ');
  String input = stdin.readLineSync()!;
  int zero = int.parse(input);
  if (zero == 0) {
    print('O número digitado é: $zero ');
    print('');
  }
  else {
    print('O número digitado não e zero');
  }

  return zero;
}
