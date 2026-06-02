/* consecionario. 1. Un concesionario vial necesita calcular la tarifa de un peaje. El costo base depende
del tipo de vehículo: 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula). Sin
embargo, para los buses y camiones, se debe cobrar un valor adicional por cada eje
que tenga el vehículo. Solicite al usuario el tipo de vehículo y el número de ejes.
Utilice un switch para determinar la tarifa. Las motos pagan tarifa plana de $5.000 y
los autos $10.000. Los buses pagan $15.000 + $2.000 por cada eje. Los camiones
pagan $20.000 + $5.000 por cada eje. Muestre el total a pagar. */

import 'dart:io';

void main(List<String> arguments) {
  print('Concesonario vial');

  /*2. Una empresa de software realizará el ajuste salarial anual de sus empleados 
basándose en su categoría (1 a 4). Solicite el salario actual del empleado y su número 
de categoría. En lugar de hacer el cálculo del nuevo salario directamente dentro de 
cada case, utilice el switch únicamente para definir el porcentaje de aumento 
correspondiente a esa categoría en una variable temporal (Cat 1: 15%, Cat 2: 10%, 
Cat 3: 8%, Cat 4: 5%). Una vez cerrado el switch, realice el cálculo matemático final 
e imprima el resultado. (Esto enseña el principio DRY: No repetir código).*/

  int tipoVehiculo, numEjes;
  double tarifaPeaje, total;

  print(
    'Que tipo de vehículo 1. Motos | 2. Automovil | 3. Bus | 4. Camión/Tractomula',
  );
  tipoVehiculo = int.parse(stdin.readLineSync()!);

  switch (tipoVehiculo) {
    case 1: // Moto
      total = 5000;
      break;
    case 2: // Automovil
      total = 10000;
      break;
    case 3: // Bus
      tarifaPeaje = 15000;
      print('Cual es el numero de ejes del bus');
      numEjes = int.parse(stdin.readLineSync()!);
      total = tarifaPeaje + numEjes * 2000;
      break;
    case 4: // Camión
      tarifaPeaje = 20000;
      print('Cual es el numero de ejes del camión o tractomula');
      numEjes = int.parse(stdin.readLineSync()!);
      total = tarifaPeaje + numEjes * 5000;
      break;
    default:
      total = 0;
      print('Opción no válida');
      break;
  }
  print('El total a pagar es: \$$total');
}
