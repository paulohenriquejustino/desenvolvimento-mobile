import 'dart:io';


class Calcular {
  // Atributos
  late double num1;
  

  // Metodo construtor...
  Calcular(this.num1);

  double calcularSucessor() {
    double sucessor = num1 + 1;
    print('');
    print('O sucessor de $num1 é $sucessor ');
    return sucessor;
  }

  double calcularAntecessor() {
    double antecessor = num1 - 1;
    print('');
    print('O Antecessor de $num1 é $antecessor ');
    print('');
    return antecessor;
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o primeiro número: ');
  double num1= double.parse(stdin.readLineSync()!);

  Calcular descobrirSucessor = Calcular(num1);
  double guardaSucessor = descobrirSucessor.calcularSucessor();

  Calcular descobrirAntucessor = Calcular(num1);
  double guardaAntecessor = descobrirAntucessor.calcularAntecessor();

}
  

