import 'dart:io';

void enviarEmail(destinatario, assunto, msg) {
  print('-'*70);
  print('Enviando email para: $destinatario');
  print('Assunto: $assunto');
  print('Corpo: $msg');
  print('-'*70);
  print('Email enviando com sucesso!');
  print('-'*70);
}

void main () {
  //Boa prática
  String? destinario;
  String? assunto;
  String? msg;

  print('Exemplo de função void');
  print('-'*70);

  stdout.write('Digite o destinatário: ');
  destinario = stdin.readLineSync();

  stdout.write('Digite o assunto: ');
  assunto = stdin.readLineSync();

  stdout.write('Digite o corpo da mensagem: ');
  msg = stdin.readLineSync();

  // Invocando a função para ser executada
  enviarEmail(destinario, assunto, msg);
}