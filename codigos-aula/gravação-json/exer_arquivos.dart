import 'dart:io';
import 'dart:math';
// Importando meu outros codigos...
import 'meuArquivoGravacao.dart'; 
import 'meuArquivoLeitura.dart';
import 'meuArquivoExclusao.dart';



void main() {
  // Declarando minha flag para finalizar o progama...
  bool flag = false;

  final caminho = File('teste1_json.txt');  // definindo o caminho para ser mostrando...
 

  String lerArquivo(String caminho) {
    final arquivo = File(caminho);
    String conteudo = arquivo.readAsStringSync(); // lendo todo o conteudo...

    return conteudo;
  }

  
  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Fazer uma gravação no arquivo: ');
    print('2 - Fazer uma leitura no arquivo: ');
    print('3 - Fazer uma exclusão no aqquivo: ');
    print('4 - Finalizar o progama... ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
      print('Deseja calcular a média aritimetica é a media ponderada de um aluno?');
      String mostrar = stdin.readLineSync()!.toLowerCase();

      if (mostrar == 'sim'){

        final mediaAritmeticValor = mediaAritimetica(); 
        caminho.writeAsStringSync('Média Aritmética: $mediaAritmeticValor\n', mode: FileMode.append); // salvando os dados recebidos... com (writeAsStringSync)

        final mediaPonderadaValor = mediaPonderada();
        caminho.writeAsStringSync('Média Ponderada: $mediaPonderadaValor\n\n', mode: FileMode.append);
      
      } else {
        print('Escolha outra opção ou finalize o codígo');
        continue;
      }
      break;
      
      case 2:
      String conteudo = lerArquivo('teste1_json.txt'); // lendo o arquivo guardando dentro de conteudo...
      print(conteudo);
      break;

      case 3:
      excluirDados();
      break;

      case 4:
      print('Finalizando o progama...');
      flag = true;
      break;
        
      default:
      // caso o usuário selecione uma opção que não existe
      print('Opção inválida');
      break;
    }
  }
}

