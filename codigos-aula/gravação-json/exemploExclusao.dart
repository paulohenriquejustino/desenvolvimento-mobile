import 'dart:io';
import 'dart:convert';

void main() {
  final caminho = File('teste1_json.txt');

  // Lendo todo o conteudo do arquivo
  String conteudo = caminho.readAsStringSync();

  // Seprando por linhas
  List<String> linhas = conteudo.trim().split('\n');

  // Define a linha a ser removida...
  int linhaParaRemover = removerLinha;

  // Remove a linha digitada...
  linhas.removeWhere((removerLinha) => linhas == linhas[linhaParaRemover]);

  // Jutando as linhas novamente em uma string...
  String novoConteudo = linhas.join('\n');

  // Remontando minha lista com o arquivo removido...
  caminho.writeAsBytesSync(novoConteudo);

 


}

