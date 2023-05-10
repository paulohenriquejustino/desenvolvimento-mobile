import 'dart:io';

// Utilizando função void como "saída de dados" ...
void notas(double nota1, double nota2) {
  print('-' * 70);
  print('Primeira nota digitada: $nota1');
  print('Segunda nota digitada: $nota2');
  print('=' * 70);
}

// Utilizando função com retorno para calcular média ponderada
double mediaPonderada(double nota1, double nota2) {
  double peso1 = 4;
  double peso2 = 6;
  double media = (nota1 * peso1 + nota2 * peso2) / (peso1 + peso2);
  return media;
}

// Utilizando função opcional para verificar aprovação
dynamic verificarAprovacao(double media, [double mediaMinima = 7]) {
  if (media >= mediaMinima) {
    print('Parabéns, você foi aprovado com média $media!');
  } else {
    print('Infelizmente você não foi aprovado, sua média foi $media.');
  }
}

void main() {
  double nota1 = 0;
  double nota2 = 0;
  double media1 = 0;
  double media2 = 0;
  bool finalizado = false;

  while (!finalizado) {
    print('1 - Digite as notas: '); 
    print('2 - Verificar média ponderada: '); 
    print('3 - Verificar aprovação: '); 
    print('4 - Soma das médias:');
    print('5 - Finalizar programa...');
    print('');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite a primeira nota: ');
        nota1 = double.parse(stdin.readLineSync()!);
        print('Digite a segunda nota: ');
        nota2 = double.parse(stdin.readLineSync()!);
        notas(nota1, nota2);
        break;

      case 2:
        media1 = mediaPonderada(nota1, nota2);
        print('A média ponderada das notas $nota1 e $nota2 é $media1.');
        break;

      case 3:
        media2 = mediaPonderada(nota1, nota2);
        verificarAprovacao(media2);
        break;

      case 4:
        media1 = mediaPonderada(nota1, nota2);
        media2 = mediaPonderada(nota2, nota1);
        double soma = 0;
        [media1, media2].forEach((media) => soma += media);
        print('A soma das médias $media1 e $media2 é $soma.');
        break;

      case 5:
        finalizado = true;
        print('Programa finalizado.');
        break;

      default:
        print('Opção inválida. Tente novamente.');
        break;
    }
  }
}

// O código acima implementa um programa que recebe as notas do aluno e calcula a média ponderada utilizando os pesos 
//das notas. Em seguida, é verificado se a média final é suficiente para aprovação. O programa também exibe a média 
//final calculada e a soma das notas.