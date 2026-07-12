import 'dart:io';

void main() {
  int cantidadAutos;
  int contador = 1;

  int digito;

  int amarilla = 0;
  int rosada = 0;
  int roja = 0;
  int verde = 0;
  int azul = 0;

  print("Ingrese la cantidad de autos:");
  cantidadAutos = int.parse(stdin.readLineSync()!);

  while (contador <= cantidadAutos) {
    print("\nAuto $contador");

    print("Ingrese el último dígito de la placa:");
    digito = int.parse(stdin.readLineSync()!);

    if (digito == 1 || digito == 2) {
      amarilla++;
    } else if (digito == 3 || digito == 4) {
      rosada++;
    } else if (digito == 5 || digito == 6) {
      roja++;
    } else if (digito == 7 || digito == 8) {
      verde++;
    } else if (digito == 9 || digito == 0) {
      azul++;
    } else {
      print("El dígito ingresado no es válido.");
    }

    contador++;
  }

  print("\nRESULTADOS");
  print("Calcomanía amarilla: $amarilla");
  print("Calcomanía rosada: $rosada");
  print("Calcomanía roja: $roja");
  print("Calcomanía verde: $verde");
  print("Calcomanía azul: $azul");
}