import 'dart:io';

void main() {
  int cantidadAlumnos;
  int contador = 1;

  String sexo;
  int edad;

  int sumaHombres = 0;
  int sumaMujeres = 0;
  int sumaTotal = 0;

  int contHombres = 0;
  int contMujeres = 0;

  double promedioHombres = 0;
  double promedioMujeres = 0;
  double promedioGeneral = 0;

  print("Ingrese la cantidad de alumnos:");
  cantidadAlumnos = int.parse(stdin.readLineSync()!);

  while (contador <= cantidadAlumnos) {
    print("\nAlumno $contador");

    print("Ingrese el sexo (H para hombre, M para mujer):");
    sexo = stdin.readLineSync()!.toUpperCase();

    print("Ingrese la edad:");
    edad = int.parse(stdin.readLineSync()!);

    sumaTotal += edad;

    if (sexo == "H") {
      sumaHombres += edad;
      contHombres++;
    } else if (sexo == "M") {
      sumaMujeres += edad;
      contMujeres++;
    } else {
      print("Sexo no válido.");
    }

    contador++;
  }

  if (contHombres > 0) {
    promedioHombres = sumaHombres / contHombres;
  }

  if (contMujeres > 0) {
    promedioMujeres = sumaMujeres / contMujeres;
  }

  promedioGeneral = sumaTotal / cantidadAlumnos;

  print("\nRESULTADOS");
  print("Promedio de edad de los hombres: ${promedioHombres.toStringAsFixed(2)}");
  print("Promedio de edad de las mujeres: ${promedioMujeres.toStringAsFixed(2)}");
  print("Promedio general: ${promedioGeneral.toStringAsFixed(2)}");
}