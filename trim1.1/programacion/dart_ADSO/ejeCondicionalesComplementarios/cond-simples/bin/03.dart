/* 3. Una academia de música cobra $35.000 por clase individual. Si un estudiante
inscribe entre 4 y 7 clases para el mes, recibe un 10% de descuento sobre el subtotal.
Si inscribe 8 o más clases, se le mostrará un mensaje que tiene derecho a 2 boletas
para un concierto. Solicite la cantidad de clases, calcule el subtotal y utilice
condicionales para aplicar el descuento si corresponde. Muestre el total a pagar. */

import 'dart:io';

void main(List<String> args) {
  double cantidadC, subTotal, descuento;
  double total;


  print("porfavor ingrese la cantidad de clases a las que se inscribio");
  cantidadC = double.parse(stdin.readLineSync()!);

  subTotal = 35000 * cantidadC;
  if (cantidadC >= 4 && cantidadC <= 7) {
    descuento = subTotal * 0.10;
    total = subTotal - descuento;
    print("el precio total de sus clases con un bono de descuento del 10% es: $total");
  }

  if (cantidadC >= 8) {
    print("Gracias por inscribirse a mas de 8 clases, porfavor reclame sus boletas para el concierto de blessd en recepcion, su total a pagar es: $subTotal");
  }


  if (cantidadC < 4) {
    print("su total de clases inscritas fue $cantidadC clases, y su total a pagar es: $subTotal");
  }
}