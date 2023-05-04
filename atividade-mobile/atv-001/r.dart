import 'dart:io';

void main() {
  stdout.write('Digite a temperatura em graus Celsius (°C): ');
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9/5) + 32;
  print('$celsius °C equivalem a $fahrenheit °F');

  stdout.write('Digite a temperatura em graus Fahrenheit (°F): ');
  double fahrenheitInput = double.parse(stdin.readLineSync()!);

  double celsiusResult = (fahrenheitInput - 32) * 5/9;
  print('$fahrenheitInput °F equivalem a $celsiusResult °C');
}
