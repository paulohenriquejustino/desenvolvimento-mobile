import 'dart:io';
import 'dart:convert';



void main() {
  final caminho = File('teste1_json.txt');

  // Lendo o conteudo do arquivo e exibindo na tela
  String conteudo = caminho.readAsStringSync();
  print(conteudo);


  // Separando as informações por linha e salvando em Map
  Map<String, dynamic> informacoes = {};

  List<String> linhas = conteudo.trim().split('\n');
  for (String linha in linhas ) {
    List<String> campos = linha.split(': ');
    String chave = campos[0];
    dynamic valor = campos[1];
    informacoes.putIfAbsent(chave, () => valor);
    
  }

  print(informacoes);
}
