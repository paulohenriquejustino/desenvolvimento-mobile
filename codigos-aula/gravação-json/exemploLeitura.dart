import 'dart:io';
import 'dart:convert';



void main() {
  final caminho = File('teste_json.txt');
  lerMapasDoCaminho(caminho);
}

void lerMapasDoCaminho(File file) {
  final conteudo = file.readAsLinesSync();
  for(var i = 0; i < conteudo.length; i++) {
    final linha = conteudo[i].trim();

    if (linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        print('\n=== Mapa ${i + 1} ===');
        printMap(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  }
}

void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}