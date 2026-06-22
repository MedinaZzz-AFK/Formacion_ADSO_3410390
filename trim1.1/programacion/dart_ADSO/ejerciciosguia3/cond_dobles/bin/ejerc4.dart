/* 4. Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del
comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se
distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada
pago mensual ingresando el valor de la casa */

import 'dart:io';

void main(List<String> args) {
  double ingresos;
  double porcentaje;
  double valorCasa;

  print("porfavor ingrese de cuanto son sus ingresos mensuales");
  ingresos = double.parse(stdin.readLineSync()!);

  print("porfavor ingrese el valor de la casa");
  valorCasa = double.parse(stdin.readLineSync()!);

  if (ingresos >= 800000){
    porcentaje = valorCasa * 0.15;
    print("el valor de la cuota inicial de su casa es: $porcentaje");
  } else {
    porcentaje = valorCasa * 0.30;
    print("el valor de la cuota inicial de su casa es: $porcentaje");
  }
}