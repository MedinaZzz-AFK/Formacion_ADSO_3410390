import 'dart:io';

void main() {
  int suma = 0;

  for (var i = 1; i <= 10; i++) {
    stdout.write('Ingrese el número $i: ');

    String? entrada = stdin.readLineSync();

    int numero = int.tryParse(entrada ?? '') ?? 0;

    suma += numero;
  }

  print('\nLa suma de los 10 números enteros es: $suma');
}
