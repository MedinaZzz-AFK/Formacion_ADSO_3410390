//Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura actual en grados Celsius, y luego los muestre.
//jeronimo medina
import 'dart:io';

void main(List<String> args) { //definicion de variables
  String? nombre;
  String? temperaturaC;

  print("porfavor digite el nombre de la ciudad"); //proceso
  nombre = stdin.readLineSync();
  print("porfavor digite la temperatura en °C de la ciudad");
   temperaturaC = stdin.readLineSync();

    print("el nombre de la ciudad es: $nombre, y la temperatura en grados celcius es: $temperaturaC");

}