import 'dart:io';

void main() {
  print('PARA FINALIZAR O PROGAMA DIGTIE: q');

  while(true) {
    print('Digite uma letra: ');
    String? letra = stdin.readLineSync()!.toLowerCase();

    switch (letra) {
      case 'a':
        print('E uma vogal');
        break;
      case 'e':
        print('E uma vogal');
        break;
      case 'i':
        print('E uma vogal');
        break;
      case 'o':
        print('E uma vogal');
        break;
      case 'u':
        print('E uma vogal');
        break;
      default:
      print('E uma consoante');
    }
  }

}
