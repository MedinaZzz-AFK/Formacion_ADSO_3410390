import 'dart:io';

void main() {
  double suma = 0;
  double nota;
  double promedio;

  for (int i = 1; i <= 7; i++) {
    print("Ingrese la calificación $i:");
    nota = double.parse(stdin.readLineSync()!);
    suma = suma + nota;
  }

  promedio = suma / 7;

  print("");
  print("El promedio del alumno es: $promedio");
}