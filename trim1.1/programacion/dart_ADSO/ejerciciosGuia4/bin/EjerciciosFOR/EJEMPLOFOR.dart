/* variables tipo acumulador */
/* se desea registrar los puntos acumulados que se gaan en cada partido, teniendo e cuneta que el maximo puntaje es 10 por partido. mostrar al final el total de puntaje acumulado y el promedio de puntos */

import 'dart:io';

void main(List<String> args) {
  int puntos, puntosAcum=0;
  double promedio;
  int totalPartidos = 15;

  for (var i = 1; i <= totalPartidos ; i++) {
    print("cual fue el puntaje del parido $i");
    puntos = int.parse(stdin.readLineSync()!);
    puntosAcum = puntosAcum + puntos;
    //puntosAcum += puntos; <-- tambien se puede hacer de esta forma

  }

  promedio = puntosAcum / totalPartidos;

  print("el total de puntos es $puntosAcum");
  print("el promedio es $promedio");
}
