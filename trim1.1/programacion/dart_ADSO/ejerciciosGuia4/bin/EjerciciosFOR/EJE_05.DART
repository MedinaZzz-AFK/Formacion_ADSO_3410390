import 'dart:io';

void main() {
  int numero;
  int resultado;

  print("Ingrese el número del que desea conocer la tabla de multiplicar:");
  numero = int.parse(stdin.readLineSync()!);

  print("");
  print("Tabla de multiplicar del $numero");
  print("");

  for (int i = 1; i <= 10; i++) {
    resultado = numero * i;
    print("$numero x $i = $resultado");
  }
}