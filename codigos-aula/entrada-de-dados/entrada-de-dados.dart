import 'dart:io';
void main() {
  print('');
  //Precisamos prestar atenção no nullsafety (?)
  stdout.write('Entre com seu nome: ');
  //Nome pode ser nulo
  String? nome = stdin.readLineSync();

  //Precisamos prestar atenção no nullsafety (!)
  stdout.write('Data de nascimento: ');
  //Idade não é nula
  //int.pase é um casting
  int idade = int.parse(stdin.readLineSync()!);

  //Sai´da
  print("Seu nome é $nome");
  print("Nascimento /$idade");
  print('');
}