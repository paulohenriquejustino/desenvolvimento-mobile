import 'dart:io';
import 'dart:math';

void main() {
  bool flag = false;
  List<String> senhasGeradas = [];

  while (!flag) {
    print('Escolha uma opção: ');
    print('1 - Gerando uma senha: ');
    print('2 - Digite 2 para finalizar o programa ');
    print('3 - Comparar senhas geradas: ');

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite o tamanho da senha (pressione enter para manter o valor padrão de 8 caracteres): ');
        int tamanhoEntrada = int.parse(stdin.readLineSync()!);
  
        print('Incluir letras maiúsculas na senha? (S/N) (pressione enter para manter o valor padrão de não incluir letras maiúsculas):');
        String? opcaoLetrasMaiusculas = stdin.readLineSync();
  
        bool incluirLetrasMaiusculas = false;
        if (opcaoLetrasMaiusculas?.toUpperCase() == 'S') {
          incluirLetrasMaiusculas = true;
        }
  
        // gerando a senha com base nos parâmetros opcionais
        String senhaGerada = gerarSenha(tamanhoEntrada, incluirLetrasMaiusculas);
        print('Senha gerada: $senhaGerada');

        // adicionando a senha gerada para a lista
        senhasGeradas.add(senhaGerada);
        break;

      case 2:
        print('Finalizando programa...');
        flag = true;
        break;

      case 3:
        dynamic senhaGerada1, senhaGerada2;
      
        // função anônima que gera a primeira senha
        () {
          senhaGerada1 = gerarSenha(8, true);
          print('Primeira senha gerada: $senhaGerada1');
        }(); // chamada imediata da função
    
        // função anônima que gera a segunda senha
        () {
          senhaGerada2 = gerarSenha(10, false);
          print('Segunda senha gerada: $senhaGerada2');
        }();
    
        // comparando as senhas geradas
        if (senhaGerada1 == senhaGerada2) {
          print('As senhas são iguais!');
        } else {
          print('As senhas são diferentes!');
        }

        break;
        
      default:
        print('Opção inválida');
        break;
    }
  }

  // mostrando todas as senhas geradas
  if (senhasGeradas.isNotEmpty) {
    print('\nTodas as senhas geradas:');
    senhasGeradas.forEach((senha) => print(senha));
    print('');
  } else {
    print('Nenhuma senha foi gerada.');
    print('');
  }
}

String gerarSenha([int tamanho = 8, bool incluirLetrasMaiusculas = false]) {
  String letrasMinusculas = 'abcdefghijklmnopqrstuvwxyz';
  String numeros = '0123456789';
  String caracteresEspeciais = '!@#\$%&*()_-+=[]{}|;:,.<>/?';
  String caracteres = letrasMinusculas + numeros + caracteresEspeciais;

  if (incluirLetrasMaiusculas) {
    String letrasMaiusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    caracteres += letrasMaiusculas;
  }

  Random random = new Random();

  String senha = '';
  for (int i = 0; i < tamanho; i++) {
    int index = random.nextInt(caracteres.length);
    senha += caracteres[index];
  }

  return senha;
}
