import 'dart:io';

void main() {
  int cantidadAlumnos;
  int contador = 1;

  double nota;
  double suma = 0;
  double promedio;

  print("Ingrese la cantidad de alumnos:");
  cantidadAlumnos = int.parse(stdin.readLineSync()!);

  while (contador <= cantidadAlumnos) {
    print("\nIngrese la calificación del alumno $contador:");
    nota = double.parse(stdin.readLineSync()!);

    suma = suma + nota;

    contador++;
  }

  promedio = suma / cantidadAlumnos;

  print("");
  print("El promedio del grupo es: ${promedio.toStringAsFixed(2)}");
}