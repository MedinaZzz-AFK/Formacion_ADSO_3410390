import 'dart:io';

void main() {
  int numeroControl;
  int mejorControl = 0;

  double nota1;
  double nota2;
  double nota3;
  double nota4;
  double nota5;

  double promedio;
  double mayorPromedio = 0;

  String continuar;

  do {
    print("\nIngrese el número de control del alumno:");
    numeroControl = int.parse(stdin.readLineSync()!);

    print("Ingrese la nota de la unidad 1:");
    nota1 = double.parse(stdin.readLineSync()!);

    print("Ingrese la nota de la unidad 2:");
    nota2 = double.parse(stdin.readLineSync()!);

    print("Ingrese la nota de la unidad 3:");
    nota3 = double.parse(stdin.readLineSync()!);

    print("Ingrese la nota de la unidad 4:");
    nota4 = double.parse(stdin.readLineSync()!);

    print("Ingrese la nota de la unidad 5:");
    nota5 = double.parse(stdin.readLineSync()!);

    promedio = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;

    if (promedio > mayorPromedio) {
      mayorPromedio = promedio;
      mejorControl = numeroControl;
    }

    print("\n¿Desea ingresar otro alumno? (S/N)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "S");

  print("\nEl alumno con mayor promedio es:");
  print("Número de control: $mejorControl");
  print("Promedio: $mayorPromedio");
}