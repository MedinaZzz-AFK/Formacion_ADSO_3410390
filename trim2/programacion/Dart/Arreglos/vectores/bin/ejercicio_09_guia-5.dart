/* 9. Una agencia de seguros desea obtener un reporte al final del día de sus n empleados para determinar
cuál fue el empleado que obtuvo el mayor sueldo en base a sus ventas y comisiones, se registrará el
nombre del empleado la edad y el sueldo que obtuvo al final del día. Desarrollar un programa que
pida al usuario el nombre de los n empleados, su edad y el sueldo para generar un reporte que lo
muestre en pantalla de la siguiente manera: el nombre del empleado, edad, sueldo, el empleado con
mayor sueldo, el sueldo del empleado que gana más y su edad.
Debe declarar un arreglo de enteros para la edad.
Debe declarar un arreglo de reales para el sueldo.
Debe declarar un arreglo de cadena para el nombre
 */

import 'dart:io';

void main() {
  stdout.write('Ingrese la cantidad de empleados (n): ');
  int n = int.parse(stdin.readLineSync()!);

  List<String> nombres = [];
  List<int> edades = [];
  List<double> sueldos = [];

  for (int i = 0; i < n; i++) {
    print('\n-- Empleado ${i + 1} --');
    stdout.write("Nombre: ");
    nombres.add(stdin.readLineSync()!);

    stdout.write("Edad: ");
    edades.add(int.parse(stdin.readLineSync()!));

    stdout.write("Sueldo: ");
    sueldos.add(double.parse(stdin.readLineSync()!));
  }

  int mayorPosicion = 0;
  for (int i = 1; i < n; i++) {
    if (sueldos[i] > sueldos[mayorPosicion]) {
      mayorPosicion = i;
    }
  }

  print(" REPORTE GENERAL DE EMPLEADOS ");
  for (int i = 0; i < n; i++) {
    print('Nombre: ${nombres[i]} | Edad: ${edades[i]} | Sueldo: \$${sueldos[i].toStringAsFixed(2)}');
  }

  print(" EMPLEADO CON MAYOR SUELDO ");
  print('Nombre: ${nombres[mayorPosicion]}');
  print('Edad: ${edades[mayorPosicion]}');
  print('Sueldo mayor: \$${sueldos[mayorPosicion].toStringAsFixed(2)}');
}