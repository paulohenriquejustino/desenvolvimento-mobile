import 'dart:io';

void main() {
  int i = 1;

  while (i <= 5) {
    stdout.write('$i');
    //É preciso incrementar (++) a variável iteradora (i), para fazer a contar 1+1+1...
    i++;
  }
}