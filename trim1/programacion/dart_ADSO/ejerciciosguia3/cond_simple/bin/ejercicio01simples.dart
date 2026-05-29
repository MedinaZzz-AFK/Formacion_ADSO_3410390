
import 'dart:io';

void main(List<String> arguments) {
  /* El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus
empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas
y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo
del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo.
Desarrollar el algoritmo y diagrama de flujo. */

  print('ejercicio 1-condicionales simples');
  //definicion de variables

  String? nombre;
  double valorHora,  horasTrabajadas, salarioNeto, incentivo;

  //entrada
  print("ingrese su nombre");
  nombre = stdin.readLineSync();

  print("ingrese la cantidad de horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);

  print("ingrese el valor por hora");
  valorHora = double.parse (stdin.readLineSync()!);

  //proceso

  salarioNeto = horasTrabajadas * valorHora;
  incentivo = 0; //por defecto no hay incentivo

  if (horasTrabajadas > 40){
    incentivo = salarioNeto * 0.05;
  }

  salarioNeto = salarioNeto + incentivo;

  //salida

  print("el empleado: $nombre recibe un salario neto de: \$$salarioNeto");


 
}
