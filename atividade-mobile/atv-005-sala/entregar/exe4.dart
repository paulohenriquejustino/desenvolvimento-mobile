import 'dart:io';

// Utilizando função void como "saída de dados" ...
void dadosLogin(login, senha) {
  print('-' * 70);
  print('Login: $login');
  print('Senha: $senha');
  print('=' * 70);
}

// função de retorno que verifica se a senha tem pelo menos 6 dígitos
bool verificarSenha(String senha) {
  if (senha.length < 6) {
    print('Digite uma senha com pelo menos 6 dígitos!');
    print('');
    return false;
  } else {
    print('Senha atende aos requisitos.');
    print('');
    return true;
  }
}

// função opcional para cadastrar um email
String cadastraEmail([String? email]) {
  if (email != null && email.contains('@gmail.com')) {
    print('Email cadastrado: $email');
    return email;
  } else {
    stdout.write('Email inválido, adicione @gmail.com: ');
    String novoEmail = stdin.readLineSync()!;
    return cadastraEmail(novoEmail);
  }
}
void main() {
  String? emailCadastrado; // variável para armazenar o email cadastrado

  while (true) {
    // Menu de opções
    print('1 - Digite seu login e senha: ');
    print('2 - Verificar senha:');
    print('3 - Cadastrar Email: '); // função opcional
    print('4 - Verificar email cadastrado: '); // função anonima utilizando for each
    print('5 - Finalizar programa... ');
    print('');

    // O codigo acima tem o intuito de fazer o login e senha do usuario, fazer o cadastro do email e log depois verifcar a senha e email cadastrdos
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        // Entrada de dados do usuário para login e senha
        stdout.write('Digite o login: ');
        String login = stdin.readLineSync()!;
        print('');
        stdout.write('Digite a senha: ');
        String senha = stdin.readLineSync()!;
        dadosLogin(login, senha);
        break;

      case 2:
        // Verifica se a senha digitada tem pelo menos 6 dígitos
        stdout.write('Digite a senha: ');
        String senha = stdin.readLineSync()!;
        verificarSenha(senha);
        break;

      case 3:
        // Cadastra um email com @gmail.com
        stdout.write('Digite o email: ');
        String email = stdin.readLineSync()!;
        emailCadastrado = cadastraEmail(email);
        break;

      case 4:
        // Verifica se o email cadastrado é válido usando uma função anônima com forEach
        if (emailCadastrado != null) {
          bool encontrado = false;
          List<String> emailsCadastrados = [emailCadastrado]; // lista de emails cadastrados (exemplo)
          emailsCadastrados.forEach((email) {
            if (email == emailCadastrado) {
              print('O email $emailCadastrado está cadastrado.');
              encontrado = true;
            }
          });
          if (!encontrado) {
            print('O email $emailCadastrado não foi encontrado.');
          }
        } else {
          print('Nenhum email cadastrado.');
        }
        break;

      case 5:
        // Finaliza o programa
        print('Finalizando programa...');
        exit(0);
        break;

      default:
        // Informa que a opção escolhida é inválida
        print('Opção inválida. Tente novamente.');
        break;
    }
  }
}


//O código acima implementa um programa que permite ao usuário realizar o login e cadastrar sua senha.
// Além disso, há a opção de cadastrar um email e posteriormente verificar se o mesmo foi cadastrado corretamente. 
//O programa também inclui uma verificação para garantir que a senha do usuário seja pelo menos de 6 caracteres