import 'dart:io';

// Utilizando função void como "saída de dados" ...
void valores(valor1, valor2) {
  print('-' * 70);
  print('Primeiro valor digitado: $valor1');
  print('Segundo valor digitado: $valor2');
  print('=' * 70);
}

// Utilizando função de retorno...
int numeroPositivo() {
  print('Digite um número inteiro: ');
  String? input = stdin.readLineSync();
  int positivo = int.parse(input!);
  if (positivo >= 0) {
    print('O $positivo é positivo! ');
    print('');
  } else {
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
  String? input = stdin.readLineSync();
  int negativo = int.parse(input!);
  if (negativo < 0) {
    print('O $negativo é negativo!');
    print('');
  } else {
    print('O $negativo não é negativo!');
  }
  return negativo;
}

// Função opcional
int verificarAno(int valor1, [int valor2 = 5]) {
  dynamic resultado;

  if (valor2 == 2) {
    resultado = valor1 * 5;
    print('O $valor1 foi multiplicado por 5');
  } else {
    resultado = valor1 * valor2;
    print('O resultado: $resultado');
  }

  return resultado;
}

void main() {
  int valor1 = 0;
  int valor2 = 0;

  while (true) {
    print('1 - Digitar primeiro e segundo valor: ');
    print('2 - Verificar se um número é positivo: ');
    print('3 - Verificar se o número é negativo: ');
    print('4 - Multiplicar valores: ');
    print('5 - Somar valores: ');
    print('6 - Finalizar programa... ');
    print('');

    

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('Digite o primeiro valor: ');
        valor1 = int.parse(stdin.readLineSync()!);
        print('');
        stdout.write('Digite o segundo valor:  ');
        valor2 = int.parse(stdin.readLineSync()!);
        print('');
        valores(valor1, valor2);

        break;

      case 2:
        int resultadoPositivo = numeroPositivo();
        break;

      case 3:
        int resultadoNegativo = numeroNegativo();
        break;

      case 4:
        int valorMultiplicar = verificarAno(valor1, valor2);
        print('Resultado da multiplicação: $valorMultiplicar');
        break;

      case 5:
        List<int> valores = [valor1, valor2];
        int soma = valores.reduce((valor, elemento) => valor + elemento);
        print('A soma dos valores é: $soma');
        break;

      case 6:
        print('Finalizando programa...');
        return;

      default:
        print('Opção inválida. Tente novamente.');
        break;
    }
  }
}

// Este programa solicita ao usuário que informe dois valores e, em seguida, verifica se ambos são positivos ou 
//negativos. Além disso, o programa oferece a opção de somar ou multiplicar os valores informados pelo usuário. 
//Com base nisso, o programa realiza as operações escolhidas e exibe o resultado na tela.