import 'dart:io';

void main() {
  int numero;
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;

  for (int i = 1; i <= 20; i++) {
    print("Ingrese el número $i:");
    numero = int.parse(stdin.readLineSync()!);

    if (numero > 0) {
      positivos++;
    } else if (numero < 0) {
      negativos++;
    } else {
      ceros++;
    }
  }

  print("");
  print("Cantidad de números positivos: $positivos");
  print("Cantidad de números negativos: $negativos");
  print("Cantidad de ceros: $ceros");
}