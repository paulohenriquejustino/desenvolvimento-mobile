import 'dart:io';
import 'dart:convert';

void main() {
  final caminho = File('teste_json.txt');

  final listaMapas = lerMapasDoCaminho(caminho);
  printMapas(listaMapas);

  stdout.write('\nDigite o número da linha que deseja excluir: ');
  final linhaParaExcluir = int.parse(stdin.readLineSync()!);

  final listaAtualizada = excluirLinha(listaMapas, linhaParaExcluir);

  if (listaAtualizada != null) {
    final novoConteudo = listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');
    caminho.writeAsStringSync(novoConteudo);
    print('Linha $linhaParaExcluir excluída com sucesso!');
  } else {
    print('Falha ao excluir a linha $linhaParaExcluir');
  }
}

List<Map<String, dynamic>> lerMapasDoCaminho(File caminho) {
  final conteudo = caminho.readAsLinesSync();
  final listaMapas = [];

  for (var i = 0; i < conteudo.length; i++) {
    try {
      final mapaDecodificado = json.decode(conteudo[i]);
      listaMapas.add(mapaDecodificado);
    } catch (e) {
      print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
    }
  }

  return listaMapas.cast<Map<String, dynamic>>();
}

List<dynamic>? excluirLinha(List<dynamic> lista, int linhaParaExcluir) {
  if (linhaParaExcluir > 0 && linhaParaExcluir <= lista.length) {
    lista.removeAt(linhaParaExcluir - 1);
    return lista;
  }
  return null;
}

void printMapas(List<Map<String, dynamic>> mapas) {
  if (mapas.isEmpty) {
    print('Nenhum mapa encontrado!');
  } else {
    for (var i = 0; i < mapas.length; i++) {
      print('\nMapa ${i + 1}:');
      print(mapas[i]);
    }
  }
}
