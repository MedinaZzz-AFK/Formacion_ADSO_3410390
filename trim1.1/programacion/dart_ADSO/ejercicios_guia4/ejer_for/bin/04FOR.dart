/* . Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo
para calcular la calificación promedio y la calificación más baja de todo el grupo. */

import 'dart:io';

void main(List<String> args) {
  double promedio = 0,
      calificacionBaja = 5.0,
      estudiante = 0,
      calificacionesEst = 0;
  int numEstudiantes = 40;

  for (var i = 1; i <= 40; i++) {
    print("porfavor escriba la calificacion del estudiante $i");
    estudiante = double.parse(stdin.readLineSync()!);

    if (estudiante < calificacionBaja) {
      calificacionBaja = estudiante;
    }
    calificacionesEst = calificacionesEst + estudiante;
  }

  promedio = calificacionesEst / numEstudiantes;

  print("el promedio de todo el grupo es de: $promedio");
  print("la nota mas baja de todo el grupo es: $calificacionBaja");
}
