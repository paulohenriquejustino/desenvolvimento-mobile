import 'dart:io';

// Utilziando função void como '"saída de dados" ...
void dados(nome, altura, endereco, estadocivil, idade) {
  print('-'*70);
  print('Nome: $nome');
  print('Altura: $altura');
  print('Endereço: $endereco');
  print('Estado Civil: $estadocivil');
  print('Idade: $idade');
  print('='*70);
}

// Utilziando função de retorno para fazer um cálculo e 
//retorna se voce possui ou não o ano de contribuição... ( e quanto falta para conseguir)
int anosContribuicao(anoContratado, anoAtual) {
  int anosContribuicao = anoAtual - anoContratado;
  if (anosContribuicao >= 30) {
    print('Você já tem direito à aposentadoria!');
  } else {
    print('Faltam ${(30 - anosContribuicao)} anos para você ter direito à aposentadoria.');
  }
  return anosContribuicao;
}

// Utilizando função opcional na ideia de "tratamento de erro", caso o usuario digitar o ano errado...
int verificarAno(int ano, [int correto = 2023]) {
  if (ano != 2023 ) {
    print('O ano correto é: $correto');
  }
  
  return correto;
}

void main() {
  int idade = 0;
  List<int> totalTentativas = [];

  while (true) {
    print('1 - Adicionar informações pessoais ');
    print('2 - Calcular anos de contribuição em um determinado ano ');
    print('3 - Verificar o ano atual ');
    print('4 - Total de tentativas: ');
    print('5 - Finalizar programa... ');
    print('');

    int opcao = int.parse(stdin.readLineSync()!);

    switch(opcao) {
      case 1:
      stdout.write('Digite o nome: ');
      String nome = stdin.readLineSync()!;
      print('');
      stdout.write('Digite a altura: ');
      double altura = double.parse(stdin.readLineSync()!);
      print('');
      stdout.write('Digite o endereço: ');
      String endereco = stdin.readLineSync()!;
      print('');
      stdout.write('Digite o estado civil: ');
      String estadocivil = stdin.readLineSync()!;
      print('');
      stdout.write('Digite a idade: ');
      idade = int.parse(stdin.readLineSync()!);

      dados(nome, altura, endereco, estadocivil, idade);
      break;

      case 2:
      stdout.write('Digite o ano que foi contratado: ');
      int anoContratado = int.parse(stdin.readLineSync()!);
      stdout.write('Digite o ano que deseja calcular: ');
      int anoAtual = int.parse(stdin.readLineSync()!);
      int anos = anosContribuicao(anoContratado, anoAtual);
        print('Anos de contribuição: $anos');
      break;

      case 3:
      stdout.write('Digite o ano atual: ');
      int ano = int.parse(stdin.readLineSync()!);
      if (ano == 2023) {
        print('Você digitou o ano corretamente...');
        int anoCorreto = verificarAno(ano);
        totalTentativas.add(ano);
      } else {
        verificarAno(ano);
      }
      
      break;


      case 4:
      totalTentativas.forEach((totalTentativas) {
        print(totalTentativas);
      });
      print('Total de tentativas: ${totalTentativas.length}');
      break;

      
      case 6:
      print('Finalizando programa...');
      return;
      default:
      print('Opção inválida. Tente novamente.');
      break;
    }
    
  }
}

// este programa oferece opções para gerenciar informações pessoais e calcular anos de contribuição de acordo
// com as regras da previdência social, além de permitir que o usuário verifique o ano atual e acompanhe o número 
//total de tentativas de acesso.