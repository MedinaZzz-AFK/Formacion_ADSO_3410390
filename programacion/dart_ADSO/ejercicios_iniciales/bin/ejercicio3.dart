//Hacer un algoritmo que lea el nombre de un conductor, la distancia recorrida
//(km) y el tiempo empleado (horas) para mostrar la velocidad promedio.
//jeronimo medina
import 'dart:io';

void main(List<String> args) {
  
  //definicion de variables
  String? nombre;
  double distancia;
  double horas;
  double velocidad;

  print("porfavor digite su nombre");//proceso
  nombre = stdin.readLineSync();
  print("porfavor digite la distancia recorrida en Km");
  distancia = double.parse(stdin.readLineSync()!);
  print("porfavor escriba las horas totales de su trayecto");
  horas = double.parse(stdin.readLineSync()!);

  velocidad = distancia / horas;
//fin algoritmo
  print("el nombre de el conductor es: $nombre, la distancia recorrida fue: $distancia km, el tiempo que se demoro en llegar a su destino fue: $horas horas, y la velocidad promedio a la que iba es: $velocidad km/h");




}