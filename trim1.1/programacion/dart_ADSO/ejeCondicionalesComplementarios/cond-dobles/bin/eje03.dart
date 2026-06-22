/* 3. El área de Bienestar al Aprendiz del SENA ha actualizado las políticas para el servicio
de restaurante. Para recibir el almuerzo subsidiado por un valor de $2.000, el
aprendiz debe cumplir simultáneamente con los siguientes requisitos: pertenecer al
estrato 1 o al estrato 2, Y tener cero (0) faltas disciplinarias registradas en el sistema.
Si el aprendiz no cumple con todas estas condiciones, debe cancelar la tarifa regular
de $6.000. Solicite al usuario su nombre, su estrato y la cantidad de faltas
disciplinarias. Utilice un condicional doble con operadores lógicos para determinar
el valor a pagar. */

import 'dart:io';

void main(List<String> args) {
  int estrato, faltaD;
  double tarifaAl;
  String? nombre;

  print("porfavor digite su nombre");
  nombre = stdin.readLineSync()!;
  print("porfavor digite su estrato");
  estrato = int.parse(stdin.readLineSync()!);
  print("porfavor digite cuantas faltas disciplinarias tiene");
  faltaD = int.parse(stdin.readLineSync()!);

  if(estrato <= 2 && faltaD == 0){
    tarifaAl = 2000;
  }else{
    tarifaAl= 6000;
  }
  print("el almuerzo al aprendiz $nombre le queda en el subsidio por el valor de $tarifaAl pesos");

}