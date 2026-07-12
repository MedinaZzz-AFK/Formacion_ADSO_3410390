import 'dart:io';
import 'dart:math';

void main() {
  int opcion;
  double grados;
  double radianes;
  double resultado;

  do {
    print("\n===== MENÚ =====");
    print("1. Pasar de grados a radianes");
    print("2. Pasar de radianes a grados");
    print("3. Salir");

    print("Ingrese una opción:");
    opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      print("Ingrese los grados:");
      grados = double.parse(stdin.readLineSync()!);

      resultado = grados * pi / 180;

      print("Resultado: $resultado radianes");

    } else if (opcion == 2) {
      print("Ingrese los radianes:");
      radianes = double.parse(stdin.readLineSync()!);

      resultado = radianes * 180 / pi;

      print("Resultado: $resultado grados");

    } else if (opcion == 3) {
      print("Programa finalizado.");

    } else {
      print("Opción no válida.");
    }

  } while (opcion != 3);
}