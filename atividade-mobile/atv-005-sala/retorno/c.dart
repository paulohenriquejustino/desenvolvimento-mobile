import 'dart:io';
import 'dart:math';

void main() {
  // Declarando minha flag para finalizar o progama...
  bool flag = false;
  
  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Verificar se um número é par ou impar: ');
    print('2 - Verificar se o número é primo: ');
    print('4 - Sair ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
      
      int resultado = numeroParImpar();
      break;
      
      case 2:
      //  Chamando a função e guardando o resultado em uma variavel...
      int resultado = numeroPrimo();
      break;

      case 3:
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
int numeroParImpar() {
  print('Digite um número inteiro: ');
  String input = stdin.readLineSync()!;
  int par = int.parse(input);
  if (par % 2 == 0){
    print('O número e par: $par');
    print('');
  }
  else {
    print('Digite apenas números inteiros!');
    print('');
  }
  // Retornando o positivo...
  return par;
}

int numeroPrimo() {
  print('Digite um número inteiro: ');
  String input = stdin.readLineSync()!;
  int primo = int.parse(input);
  
  if (primo <= 1) {
    print('$primo não é considerado primo.');
    return primo;
  }
  
  bool condicaoPrimo = true;
  
  for (int i = 2; i <= primo / 2; i++) {
    if (primo % i == 0) {
      condicaoPrimo = false;
      break;
    }
  }
  
  if (condicaoPrimo) {
    print('$primo é primo.');
  } else {
    print('$primo não é primo.');
  }

  return primo;
}
