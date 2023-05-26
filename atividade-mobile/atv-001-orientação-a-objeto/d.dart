import 'dart:io';


class Calcular {
  // Atributos
  late double num1;
  late double num2;
  late double num3;
  late double num4;

  // Metodo construtor...
  Calcular(this.num1, this.num2, this.num3, this.num4);

  double calcularMedia() {
    double media = (num1 + num2 + num3 + num4) / 4;
    print('');
    print('A média é: $media');
    return media;
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o valor da primeira nota: ');
  double num1= double.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor da segunda nota: ');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor da terceira nota: ');
  double num3 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor da quarta nota: ');
  double num4 = double.parse(stdin.readLineSync()!);

  Calcular descobrirNota = Calcular(num1, num2, num3, num4);
  double guardaMediaNota = descobrirNota.calcularMedia();
}
  

