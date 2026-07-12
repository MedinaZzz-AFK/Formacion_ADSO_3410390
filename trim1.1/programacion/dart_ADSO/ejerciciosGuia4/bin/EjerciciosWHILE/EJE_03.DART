import 'dart:io';

void main() {
  int cantidadPersonas;
  int contador = 1;

  String sexo;

  int hombres = 0;
  int mujeres = 0;

  print("Ingrese la cantidad de personas:");
  cantidadPersonas = int.parse(stdin.readLineSync()!);

  while (contador <= cantidadPersonas) {
    print("\nPersona $contador");
    print("Ingrese el sexo (H para hombre, M para mujer):");
    sexo = stdin.readLineSync()!.toUpperCase();

    if (sexo == "H") {
      hombres++;
    } else if (sexo == "M") {
      mujeres++;
    } else {
      print("Sexo no válido.");
    }

    contador++;
  }

  print("\nRESULTADOS");
  print("Cantidad de hombres: $hombres");
  print("Cantidad de mujeres: $mujeres");
}