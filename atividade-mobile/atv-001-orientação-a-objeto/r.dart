import 'dart:io';

class ConversorTemperatura {
  double celsiusParaFahrenheit(double temperaturaCelsius) {
    return (temperaturaCelsius * 9/5) + 32;
  }

  double fahrenheitParaCelsius(double temperaturaFahrenheit) {
    return (temperaturaFahrenheit - 32) * 5/9;
  }
}

void main() {
  var conversor = ConversorTemperatura();

  stdout.write('Digite a temperatura em Celsius: ');
  var temperaturaC = double.parse(stdin.readLineSync()!);

  var temperaturaF = conversor.celsiusParaFahrenheit(temperaturaC);
  print('${temperaturaC.toStringAsFixed(1)} graus Celsius são ${temperaturaF.toStringAsFixed(1)} graus Fahrenheit.');

  stdout.write('Digite a temperatura em Fahrenheit: ');
  var temperaturaF2 = double.parse(stdin.readLineSync()!);

  var temperaturaC2 = conversor.fahrenheitParaCelsius(temperaturaF2);
  print('${temperaturaF2.toStringAsFixed(1)} graus Fahrenheit são ${temperaturaC2.toStringAsFixed(1)} graus Celsius.');
}
