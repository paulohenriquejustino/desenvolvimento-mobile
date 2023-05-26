import 'dart:async';
import 'dart:convert';
import 'dart:io';


class Calcular {
  // Atributos
  late double num1;
  

  // Metodo construtor...
  Calcular(this.num1);

  double converterKm() {
    print('');
    
    double km = num1 / 1000;
    print('');
    print('$num1 metros convetiro é $km km. ');
    return km;
  }

  double converterCm() {
    print('');
    double c = num1 * 100;
    print('');
    print('$num1 metros convertido é $c cm. ');
    return c;
  }

}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o valor em metros:');
  double metros = double.parse(stdin.readLineSync()!);
  
  Calcular descobrirKm = Calcular(metros);
  double guardaKm = descobrirKm.converterKm();

  Calcular descobrirCm = Calcular(metros);
  double guardaCm = descobrirCm.converterCm();

}
  

