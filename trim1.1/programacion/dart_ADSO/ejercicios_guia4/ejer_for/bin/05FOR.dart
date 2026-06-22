/*  5. Calcular e imprimir la tabla de multiplicar de un número cualquiera. Imprimir el multiplicando, el
multiplicador y el producto. */

import 'dart:io';

void main(List<String> args) {
  int producto, multiplicando;

  print(
    "porfavor digite de que multiplicando quiere ver la tabla (ej. 1,2,3,4,5,6,7,8,9,10)",
  );
  multiplicando = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < 12; i++) {
    producto = multiplicando * i;
    print("$multiplicando x $i = $producto");
  }
}
