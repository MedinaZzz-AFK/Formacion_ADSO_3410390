// Pedir el nombre de un empleado, el valor del día trabajado y el número de días
//laborados en el mes; mostrar el nombre y el salario mensual.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  String? nombre;
  double valor;
  int dias;
  double salario;

  //processo
  print("porfavor digite su nombre");
  nombre = stdin.readLineSync();
  print("porfavor digite cuanto le pagan por dia trabajado");
  valor = double.parse(stdin.readLineSync()!);
  print("porfavor digite el numero de dias que trabajo");
  dias = int.parse(stdin.readLineSync()!);

  salario = valor * dias;

  print(" su nombre es: $nombre, su salario mensual segun los dias trabajados y el valor de dia es: $salario pesos");


}