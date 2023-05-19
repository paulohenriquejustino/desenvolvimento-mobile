import 'dart:io';

final caminho = File('teste1_json.txt');

void main() {
  excluirDados();
}

void excluirDados(){
  // Lendo todo o conteudo do arquivo
  String conteudo = caminho.readAsStringSync();

  // Separando por linhas
  List<String> linhas = conteudo.trim().split('\n');

  print('Digite a linha que deseja excluir: ');
  int remover = int.parse(stdin.readLineSync()!);

  // Define a linha a ser removida...
  int linhaParaRemover = remover - 1; // subtrai 1 para obter o índice correto

  // Remove a linha digitada...
  linhas.removeAt(linhaParaRemover);

  // Juntando as linhas novamente em uma string...
  String novoConteudo = linhas.join('\n');

  // Remontando minha lista com o arquivo removido...
  caminho.writeAsStringSync('Média Aritmética: $novoConteudo\n', mode: FileMode.append);
}
