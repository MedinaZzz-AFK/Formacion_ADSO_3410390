import 'dart:io';

void main() {
  int edad;

  double peso;

  double sumaNinos = 0;
  double sumaJovenes = 0;
  double sumaAdultos = 0;
  double sumaMayores = 0;

  int contNinos = 0;
  int contJovenes = 0;
  int contAdultos = 0;
  int contMayores = 0;

  for (int i = 1; i <= 50; i++) {
    print("\nPersona $i");

    print("Ingrese la edad:");
    edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el peso:");
    peso = double.parse(stdin.readLineSync()!);

    if (edad >= 0 && edad <= 12) {
      sumaNinos += peso;
      contNinos++;
    } else if (edad >= 13 && edad <= 29) {
      sumaJovenes += peso;
      contJovenes++;
    } else if (edad >= 30 && edad <= 59) {
      sumaAdultos += peso;
      contAdultos++;
    } else {
      sumaMayores += peso;
      contMayores++;
    }
  }

  print("\n===== PROMEDIOS =====");

  if (contNinos > 0) {
    print("Promedio de peso de niños: ${sumaNinos / contNinos}");
  } else {
    print("No hubo niños.");
  }

  if (contJovenes > 0) {
    print("Promedio de peso de jóvenes: ${sumaJovenes / contJovenes}");
  } else {
    print("No hubo jóvenes.");
  }

  if (contAdultos > 0) {
    print("Promedio de peso de adultos: ${sumaAdultos / contAdultos}");
  } else {
    print("No hubo adultos.");
  }

  if (contMayores > 0) {
    print("Promedio de peso de adultos mayores: ${sumaMayores / contMayores}");
  } else {
    print("No hubo adultos mayores.");
  }
}