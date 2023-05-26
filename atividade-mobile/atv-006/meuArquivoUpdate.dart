import 'dart:io';
import 'meuArquivoGravacao.dart';

final caminho = File('teste1_json.txt');

void main () {
  atualizarDados();



}

void atualizarDados() {
  // Lendo todo o conteudo do meu arquivo...
  String conteudo = caminho.readAsStringSync();

  // Separando por linhas...
  List<String> linhas = conteudo.trim().split('\n');

  // Pedindo para o usuario digita a senha para ser atualizada...
  print('Digite o número da linha a ser atualizada: ');
  int indexLinha = int.parse(stdin.readLineSync()!);

  // Tratamento de erro, verificando se o numero da linha e valido...
  if (indexLinha <= 0 || indexLinha > linhas.length) { // se o index da minha linha for menor ou igual 
    print('Número de linha incorreto!');               // a 0 ou maior que o total de linhas... 
    return;
  }

  // Entrada de dados para o novo valor da linha...
  print('Digite o novo valor para esta linha: ');
  String novoValor = stdin.readLineSync()!;

  // Atualizando a linha escolhida... ( utilizando -1 para obter o valor da linha correto!)
  linhas[indexLinha - 1] = novoValor;

  // Jutando as linhas novamente  em uma unica String...
  String novoConteudo =  linhas.join('\n');

  // Fazendo a substituição do antigo conteudo pelo o novo...
  caminho.writeAsStringSync('Média Aritmética: $novoValor\n');
  print('Seus dados foi atualizado com sucesso!');

}

