import 'dart:io';

void main(List<String> args) {
  int cantidad_numeros = 10;
  int suma = 0;

  for (var i = 0; i < cantidad_numeros; i++) {
    print("  | digite el valor del numero $i|");
    int numero = int.parse(stdin.readLineSync() ?? "");
    suma += numero;
  }
  print("la suma de los numeros es : $suma");
}
