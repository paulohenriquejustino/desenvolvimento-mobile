import 'dart:io';
import 'dart:math';

// Criando as class
class Circulo {
  double raio;

  Circulo(this.raio);

  double calcularArea() {
    return pi * raio * raio;
  }
}

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    return largura * altura;
  }
}

class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double calcularArea() {
    return (base * altura) / 2;
  }
}

class Quadrado {
  double lado;

  Quadrado(this.lado);

  double calcularArea() {
    return lado * lado;
  }
}

void main() {
  print('Cálculo de Área');

  // Criando os objetos
  Map<String, double> areas = {}; // criando meu Map
  areas['Círculo'] = criarCirculo().calcularArea(); // Chama a função criarCirculo para criar um objeto do tipo Circulo e calcula sua área
  areas['Retângulo'] = criarRetangulo().calcularArea(); // Chama a função criarRetangulo para criar um objeto do tipo Retangulo e calcula sua área
  areas['Triângulo'] = criarTriangulo().calcularArea(); // Chama a função criarTriangulo para criar um objeto do tipo Triangulo e calcula sua área
  areas['Quadrado'] = criarQuadrado().calcularArea(); // Chama a função criarQuadrado para criar um objeto do tipo Quadrado e calcula sua área

  // Exibição das áreas
  for (String forma in areas.keys) { // buscando dentro forma dentro do meu Map areas... (as chaves = keys)
    double area = areas[forma]!; // Acessa o valor da chave atual do mapa, adicionando o símbolo "!" para informar ao compilador que o valor não é nulo
    print('Área do $forma: ${area.toStringAsFixed(2)}'); // Imprime a área formatada com duas casas decimais
  }
}

// Funções de criação de objetos
Circulo criarCirculo() {
  stdout.write('\nDigite o raio do Círculo: ');
  double raio = double.parse(stdin.readLineSync()!); // Lê o raio como uma string, converte para um double e atribui à variável raio
  return Circulo(raio); // Retorna um objeto do tipo Circulo com o raio lido
}

Retangulo criarRetangulo() {
  stdout.write('\nDigite a largura do Retângulo: ');
  double largura = double.parse(stdin.readLineSync()!); // Lê a largura como uma string, converte para um double e atribui à variável largura

  stdout.write('Digite a altura do Retângulo: ');
  double altura = double.parse(stdin.readLineSync()!); // Lê a altura como uma string, converte para um double e atribui à variável altura

  return Retangulo(largura, altura); // Retorna um objeto do tipo Retangulo com a largura e altura lidas
}

Triangulo criarTriangulo() {
  stdout.write('\nDigite a base do Triângulo: ');
  double base = double.parse(stdin.readLineSync()!); // Lê a base como uma string, converte para um double e atribui à variável base

  stdout.write('Digite a altura do Triângulo: ');
  double altura = double.parse(stdin.readLineSync()!); // Lê a altura como uma string, converte para um double e atribui à variável altura

  return Triangulo(base, altura); // Retorna um objeto do tipo Triangulo com a base e altura lidas
}

Quadrado criarQuadrado() {
  stdout.write('\nDigite o lado do Quadrado: ');
  double lado = double.parse(stdin.readLineSync()!); // Lê o lado como uma string, converte para um double e atribui à variável lado
  return Quadrado(lado); // Retorna um objeto do tipo Quadrado com o lado lido
}
