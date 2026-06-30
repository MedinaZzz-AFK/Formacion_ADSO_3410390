/* genere un menu que el 1. suma, 2. resta, 3. multipliacion, 4. division, 5. salir */

import 'dart:io';

void main(List<String> args) {
  int opcion;
  double num1, num2, suma, resta, multiplicacion, division = 0;

  do {
    print("\n====================");
    print("menu calculadora");
    print("1. suma");
    print("2. resta");
    print("3. multiplicacion");
    print("4. division");
    print("5. salir");
    print("--------------------");
    print("ingrese la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("ingrese el numero 1");
        num1 = double.parse(stdin.readLineSync()!);
        print("ingrese el numero 2");
        num2 = double.parse(stdin.readLineSync()!);
        suma = num1 + num2;
        print("el resultado de su suma es $suma");
        break;
      case 2:
        print("porfavor ingrese el numero 1");
        num1 = double.parse(stdin.readLineSync()!);
        print("porfavor ingrese el numero 2");
        num2 = double.parse(stdin.readLineSync()!);
        if (num1 > num2) {
          resta = num1 - num2;
        } else {
          resta = num2 - num1;
        }
        print("el resultado de su resta es: $resta");
        break;
      case 3:
        print("porfavor ingrese el numero 1");
        num1 = double.parse(stdin.readLineSync()!);
        print("porfavor ingrese el numero 2");
        num2 = double.parse(stdin.readLineSync()!);
        multiplicacion = num1 * num2;
        print("el resultado de su multiplicacion es: $multiplicacion");
        break;
      case 4:
        print("porfavor ingrese el numero 1");
        num1 = double.parse(stdin.readLineSync()!);
        print("porfavor ingrese el numero 2");
        num2 = double.parse(stdin.readLineSync()!);
        if (num2 == 0) {
          print("Error Division por cero numero indeterminado");
        } else {
          division = num1 / num2;
          print("el resultado de su division es: $division");
        }
        break;
      case 5:
        print("gracias por usar nuestro sistema!");
        exit(0);
    
      default:
        print("opcion no valida, porfavor vuelva a digitar la opcion");
        print("Presione ENTER para continuar...");
        stdin.readLineSync();
        break;
    }
  } while (opcion != 5);
}
