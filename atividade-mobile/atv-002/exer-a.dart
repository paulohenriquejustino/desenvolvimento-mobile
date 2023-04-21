import 'dart:io';
import 'dart:math';

void main () {

  print('Digite um ano:');
  int ano = int.parse(stdin.readLineSync()!);

  if ( (ano % 4 == 0) && ano % 100 == 0 && ano % 400 == 0) {
    print('O ano e bissexto!');
  } else {
    print('O ano não e bissexto!');
  }
  
}