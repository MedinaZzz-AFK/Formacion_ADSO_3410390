/* eje.03 se requiere simular la descarga de un archivo por internet hasta que llegue al 100% con un numero aleatorio entre 1 y 20 se debe simular ese porcentaje de descarga */

import 'dart:math';

void main(List<String> args) {
  Random rand=Random();
  double porcentajeDescarga = 0; //vrb acumulador
  double descarga;
  do {
    descarga = rand.nextDouble()*20;
    print("porcentaje descarga actual --> ${descarga.toStringAsFixed(2)}");
    porcentajeDescarga += descarga;
    if (porcentajeDescarga > 100) {
      porcentajeDescarga = 100;
      
    }
    print("descarga total --> ${porcentajeDescarga.toStringAsFixed(2)}");
  } while (porcentajeDescarga < 100);

  print("El archivo se decsargo exitosamente");
}