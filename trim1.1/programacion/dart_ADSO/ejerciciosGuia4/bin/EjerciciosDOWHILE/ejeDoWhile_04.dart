/* Eje 04. Genere un menú que permita realizar las siguientes operaciones: Suma, resta, multiplicación y división . Se debe contra con una opción para salir */

import 'dart:io';

void main(List<String> args) {
  int opcion;
  double num1, num2;
  do {
    print('1. Suma');
    print('2. Resta');
    print('3. Multiplicación');
    print('4. División');
    print('5. Salir');
    print('---------------------------------------------');
    print('Ingrese la oprción deseada');
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
      print('Ingrese el valor del número 1 a sumar');
      num1 = double.parse(stdin.readLineSync()!);
      print('Ingrese el valor del número 2 a sumar');
      num2 = double.parse(stdin.readLineSync()!);
      double suma = num1 + num2;
      print('El valor de la suma es: $suma');
      break;

      case 2:
      print('Ingrese el valor del número 1 a restar');
      num1 = double.parse(stdin.readLineSync()!);
      print('Ingrese el valor del número 2 a restar');
      num2 = double.parse(stdin.readLineSync()!);
      double resta; 
      if (num1 >= num2) {
        resta = num1 - num2;
      } else {
        resta = num2 - num1;
      }
       print('El valor de la resta es: $resta');
      break;  
     
      case 3:
      print('Ingrese el valor del número 1 a multiplicar');
      num1 = double.parse(stdin.readLineSync()!);
      print('Ingrese el valor del número 2 a multiplicar');
      num2 = double.parse(stdin.readLineSync()!);
      double multi = num1 * num2;
      print('El valor de la multiplicación es: $multi');
      break;   

      case 4:
      print('Ingrese el valor del número 1 a dividir');
      num1 = double.parse(stdin.readLineSync()!);
      print('Ingrese el valor del número 2 a dividir');
      num2 = double.parse(stdin.readLineSync()!);
      double dividir = 0;
      if (num2 == 0) {
        print('Error división por cero, numero indeterminado');
      } else {
         dividir = num1 / num2;
      }
      print('El valor de la división es: $dividir');
      break;   
      
      case 5:
      print('Has salido correctamente del menú');
      break;

      default:
      print('Opción incorrecta');
      break;
    }
  } while (opcion != 5  );
}