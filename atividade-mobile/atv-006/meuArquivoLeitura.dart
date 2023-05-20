import 'dart:io';
import 'dart:convert';
import 'meuArquivoExclusao.dart';
import 'meuArquivoUpdate.dart';


dynamic valor = 0;
void main() {
  final caminho = File('teste1_json.txt');

  atualizarDados();
  
  // Lendo o conteudo do arquivo e exibindo na tela
  String conteudo = caminho.readAsStringSync();
  print(conteudo);


  // Separando as informações por linha e salvando em Map
  Map<String, dynamic> informacoes = {};

  List<String> linhas = conteudo.trim().split('\n');
  for (String linha in linhas ) { // para cada linha dentro linhas...
    // Dividindo a linha em chave e usando o valor usando ' : ' como separado...
    List<String> campos = linha.split(': ');
    String chave = campos[0]; // chave
    dynamic conteudo = campos[1]; // valor
    // Adicionado a chave e o valor ao map somente se a chave nao existir...
    informacoes.putIfAbsent(chave, () => valor);
    
  }

  print(informacoes);
}



