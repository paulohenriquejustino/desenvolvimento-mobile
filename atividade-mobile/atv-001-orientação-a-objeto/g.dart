import 'dart:io';


class Calcular {
  // Atributos
  late double num1;
  
  // Metodo construtor...
  Calcular(this.num1);

  double calcularDobro() {
    double dobro = num1 * 2;
    print('');
    print('O dobro de $num1 é $dobro ');
    return dobro;
  }

  double calcularTriplo() {
    double triplo = num1 * 3;
    print('');
    print('O Triplo de $num1 é $triplo ');
    print('');
    return triplo;
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite um número: ');
  double num1= double.parse(stdin.readLineSync()!);

  Calcular descobrir = Calcular(num1);
  double guardaDobro = descobrir.calcularDobro();

  Calcular descobrirTriplo = Calcular(num1);
  double guardaTriplo = descobrirTriplo.calcularTriplo();

}
  

