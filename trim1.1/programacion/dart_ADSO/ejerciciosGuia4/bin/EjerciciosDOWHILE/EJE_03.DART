import 'dart:io';

void main() {
  int aFavor = 0;
  int enContra = 0;
  int abstencion = 0;
  int total = 0;

  int opcion;
  String continuar;

  do {
    print("\nEncuesta de un diputado");
    print("1. A favor");
    print("2. En contra");
    print("3. Se abstiene");

    print("Ingrese una opción:");
    opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      aFavor++;
    } else if (opcion == 2) {
      enContra++;
    } else if (opcion == 3) {
      abstencion++;
    } else {
      print("Opción no válida.");
    }

    total++;

    print("\n¿Desea ingresar otro diputado? (S/N)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "S");

  double porcentajeFavor = (aFavor * 100) / total;
  double porcentajeContra = (enContra * 100) / total;
  double porcentajeAbstencion = (abstencion * 100) / total;

  print("\n===== RESULTADOS =====");
  print("A favor: ${porcentajeFavor.toStringAsFixed(2)}%");
  print("En contra: ${porcentajeContra.toStringAsFixed(2)}%");
  print("Abstención: ${porcentajeAbstencion.toStringAsFixed(2)}%");
}