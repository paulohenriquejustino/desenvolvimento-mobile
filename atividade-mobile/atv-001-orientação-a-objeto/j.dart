import 'dart:io';

class ConversorMoedas {
  double valorEmReais;

  ConversorMoedas(this.valorEmReais);

  double paraDolar() {
    return valorEmReais / 5.21; // Valor do dólar em relação ao real (cotação atual)
  }

  double paraEuro() {
    return valorEmReais / 6.15; // Valor do euro em relação ao real (cotação atual)
  }

  double paraWon() {
    return valorEmReais * 179.89; // Valor do won sul-coreano em relação ao real (cotação atual)
  }
}

void main() {
  // Entrada de dados
  stdout.write('Digite o valor em reais que deseja converter: ');
  double valorEmReais = double.parse(stdin.readLineSync()!);

  // Criando objeto da classe ConversorMoedas e realizando as conversões
  ConversorMoedas conversor = ConversorMoedas(valorEmReais);
  double valorEmDolar = conversor.paraDolar();
  double valorEmEuro = conversor.paraEuro();
  double valorEmWon = conversor.paraWon();

  // Imprimindo resultado
  print('Valor em dólares: US\$ ${valorEmDolar.toStringAsFixed(2)}');
  print('Valor em euros: € ${valorEmEuro.toStringAsFixed(2)}');
  print('Valor em wons: ₩ ${valorEmWon.toStringAsFixed(2)}');
}
