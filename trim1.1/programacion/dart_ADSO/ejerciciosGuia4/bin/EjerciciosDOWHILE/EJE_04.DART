import 'dart:io';

void main() {
  int primaria = 0;
  int secundaria = 0;
  int tecnica = 0;
  int profesional = 0;
  int posgrado = 0;
  int total = 0;

  int opcion;
  String continuar;

  do {
    print("\nNivel de estudios");
    print("1. Primaria");
    print("2. Secundaria");
    print("3. Carrera Técnica");
    print("4. Profesional");
    print("5. Posgrado");

    print("Seleccione una opción:");
    opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      primaria++;
    } else if (opcion == 2) {
      secundaria++;
    } else if (opcion == 3) {
      tecnica++;
    } else if (opcion == 4) {
      profesional++;
    } else if (opcion == 5) {
      posgrado++;
    } else {
      print("Opción no válida.");
    }

    total++;

    print("\n¿Desea registrar otra persona? (S/N)");
    continuar = stdin.readLineSync()!.toUpperCase();

  } while (continuar == "S");

  double porPrimaria = (primaria * 100) / total;
  double porSecundaria = (secundaria * 100) / total;
  double porTecnica = (tecnica * 100) / total;
  double porProfesional = (profesional * 100) / total;
  double porPosgrado = (posgrado * 100) / total;

  print("\nRESULTADOS");
  print("Primaria: $porPrimaria%");
  print("Secundaria: $porSecundaria%");
  print("Carrera Técnica: $porTecnica%");
  print("Profesional: $porProfesional%");
  print("Posgrado: $porPosgrado%");
}