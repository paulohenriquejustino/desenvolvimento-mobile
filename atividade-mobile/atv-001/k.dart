import 'dart:io';
import 'dart:math';

void main() {
  double baseRetangulo, alturaRetangulo, raioCirculo, baseTrapezio, alturaTrapezio, baseMaiorTrapezio;
  double baseTriangulo, alturaTriangulo;

  // Lendo dados do retângulo
  stdout.write("Digite a base do retângulo: ");
  baseRetangulo = double.parse(stdin.readLineSync()!);
  
  stdout.write("Digite a altura do retângulo: ");
  alturaRetangulo = double.parse(stdin.readLineSync()!);

  // Calculando área do retângulo
  double areaRetangulo = baseRetangulo * alturaRetangulo;
  print("A área do retângulo é: $areaRetangulo");

  // Lendo dados do círculo
  stdout.write("Digite o raio do círculo: ");
  raioCirculo = double.parse(stdin.readLineSync()!);

  // Calculando área do círculo
  double areaCirculo = pi * pow(raioCirculo, 2);
  print("A área do círculo é: $areaCirculo");

  // Lendo dados do trapézio
  stdout.write("Digite a base maior do trapézio: ");
  baseMaiorTrapezio = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a base menor do trapézio: ");
  baseTrapezio = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a altura do trapézio: ");
  alturaTrapezio = double.parse(stdin.readLineSync()!);

  // Calculando área do trapézio
  double areaTrapezio = ((baseMaiorTrapezio + baseTrapezio) * alturaTrapezio) / 2;
  print("A área do trapézio é: $areaTrapezio");

  // Lendo dados do triângulo
  stdout.write("Digite a base do triângulo: ");
  baseTriangulo = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a altura do triângulo: ");
  alturaTriangulo = double.parse(stdin.readLineSync()!);

  // Calculando área do triângulo
  double areaTriangulo = (baseTriangulo * alturaTriangulo) / 2;
  print("A área do triângulo é: $areaTriangulo");
}
