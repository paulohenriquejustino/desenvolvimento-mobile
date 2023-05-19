import 'dart:io';

void main() {
  atualizandoConteudo();

  double mediaAritmetica = calcularMediaAritmetica();
  print('A média aritmética é: $mediaAritmetica');

  double mediaPonderada = calcularMediaPonderada();
  print('A média ponderada é: $mediaPonderada');
}

void atualizandoConteudo() {
  try {
    final caminho = File('teste1_json.txt');
    if (caminho.existsSync()) {
      // Lendo o conteúdo do arquivo...
      String conteudo = caminho.readAsStringSync();

      // Realiza as alterações no arquivo...
      conteudo = conteudo.replaceAll('valor antigo', 'valor novo');

      caminho.writeAsStringSync(conteudo);
    } else {
      print('Arquivo não encontrado.');
    }
  } catch (e) {
    print('Erro ao ler/gravar arquivo.');
  }
}

double calcularMediaAritmetica() {
  print('Digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro número: ');
  double num3 = double.parse(stdin.readLineSync()!);

  // Calculando a média aritmética
  double resultado = (num1 + num2 + num3) / 3;
  return resultado;
}

double calcularMediaPonderada() {
  print('Digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro número: ');
  double num3 = double.parse(stdin.readLineSync()!);

  // Calculando a média ponderada
  double soma = num1 * 2 + num2 * 3 + num3 * 5;
  double pesos = 2 + 3 + 5;
  double resultado = soma / pesos;
  return resultado;
}
