import 'dart:io';

class Numero {
  double valor;

  Numero(this.valor);

  double calcular() {
    if (valor >= 0) {
      // Se o valor for positivo, retorna o dobro
      return valor * 2;
    } else {
      // Se o valor for negativo, retorna o triplo
      return valor * 3;
    }
  }
}

void main() {
  stdout.write('Digite um número: ');
  double numero = double.parse(stdin.readLineSync()!);
  
  Numero meuNumero = Numero(numero);
  double resultado = meuNumero.calcular();

  print(resultado);
}
