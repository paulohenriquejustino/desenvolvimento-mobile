import 'dart:io';

class Calculos {
  // Atributos
  late double ano;
  late double anoAtual;

  // Metodo construtor
  Calculos(this.ano, this.anoAtual);

  // Criando os calculos(utilizando metodos)
  double calcularAno() {
    return (ano - anoAtual) * -1;
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite o ano: ');
  double ano = double.parse(stdin.readLineSync()!);
  stdout.write('Digite o ano atual: ');
  double anoAtual = double.parse(stdin.readLineSync()!);

  Calculos descobrirAno = Calculos(ano, anoAtual);
  double guardarAno = descobrirAno.calcularAno();
  print('Sua idade é: $guardarAno');
}