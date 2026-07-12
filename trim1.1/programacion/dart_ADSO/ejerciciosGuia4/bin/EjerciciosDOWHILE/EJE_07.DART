import 'dart:io';

void main() {
  String letra;
  int contadorA = 0;

  do {
    print("Ingrese un carácter:");
    letra = stdin.readLineSync()!;

    if (letra == "a" || letra == "A") {
      contadorA++;
      print("Cantidad de letras 'a': $contadorA");
    } else {
      print("El carácter ingresado no es una 'a'.");
    }

  } while (contadorA < 10);

  print("\nSe ingresaron 10 letras 'a'.");
  print("Programa finalizado.");
}