/* Eje 05. Crear las siguientes opciones de una aplicación bancaria. Cada una de ellas debe ser funcional y cumplir con todas las validaciones requeridas: 
MENU APP BANCARIA
1. Consultar saldo
2. Ingresar fondos
3. Realizar retiro
4. Recarga de celular
5. Transferencia a otra cuenta
6. Salir
- La aplicacion debe simular un login de usuario
- La app no debe permitir ingresar numeros negativos
- No pueden haber saldos negativos
- Se debe limpiar pantalla despues de cada accion*/

import 'dart:io';

void limpiarPantalla() {
  stdout.write('\x1B[2J\x1B[0;0H');
}

void main(List<String> args) {
  String password, usuario;
  double saldo = 451300;

  print('Bienvenido al Banco Nacional');

  do {
    print('Ingrese su número de cuenta');
    usuario = stdin.readLineSync()!;

    if (usuario.length <= 8) {
      print(
        'El número de cuenta debe tener más de 8 dígitos. Vuelva a intentar',
      );
    }
  } while (usuario.length <= 8);

  do {
    print('Ingrese su contraseña');
    password = stdin.readLineSync()!;

    if (password.length <= 8) {
      print('La contraseña debe tener más de 8 caracteres. Vuelva a intentar');
    }
  } while (password.length <= 8);

  print(
    'Bienvenido a la APP del Banco Nacional. Ha iniciado sesión correctamente.',
  );

  int opcion;

  do {
    limpiarPantalla();

    print('MENU APP BANCO CENTRAL');
    print('1. Consultar saldo');
    print('2. Ingresar fondos');
    print('3. Realizar retiro');
    print('4. Recarga de celular');
    print('5. Transferencia a otra cuenta');
    print('6. Salir');

    print('Ingrese la opción');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print('Su saldo actual es de: \$$saldo');
        break;

      case 2:
        double fondos;

        print('Escriba la cantidad a ingresar');

        do {
          fondos = double.parse(stdin.readLineSync()!);

          if (fondos <= 0) {
            print('No puede ingresar números negativos.');
          }
        } while (fondos <= 0);

        do {
          print('Ingrese la contraseña para confirmar el movimiento');
          password = stdin.readLineSync()!;

          if (password.length <= 8) {
            print('La contraseña es incorrecta');
          }
        } while (password.length <= 8);

        saldo = saldo + fondos;

        print('Su nuevo saldo es de \$$saldo');
        break;

      case 3:
        double retiro;

        print('Escriba la cantidad a retirar');

        do {
          retiro = double.parse(stdin.readLineSync()!);

          if (retiro <= 0) {
            print('No puede ingresar números negativos.');
          }
        } while (retiro <= 0);

        do {
          print('Ingrese la contraseña para confirmar el movimiento');
          password = stdin.readLineSync()!;

          if (password.length <= 8) {
            print('La contraseña es incorrecta');
          }
        } while (password.length <= 8);

        if (retiro <= saldo) {
          saldo = saldo - retiro;
          print('Su nuevo saldo es de \$$saldo');
        } else {
          print('Saldo insuficiente, no se pudo realizar el retiro');
        }

        break;

      case 4:
        int opcion;

        print('Elija el plan que desea recargar');
        print(
          '1. Todo Incluido 1 Día (\$2.500): Ofrece 50 MB de navegación básica, 50 minutos de llamadas a nivel nacional y uso de WhatsApp.',
        );
        print(
          '2. Todo Incluido 3 Días (\$4.000): Ofrece 400 MB de navegación, minutos ilimitados a cualquier operador y uso de WhatsApp, Facebook y X sin consumir tus datos.',
        );
        print(
          '3. Todo Incluido 6 Días (\$7.000): Ofrece 1,4 GB de internet, minutos ilimitados, SMS ilimitados y redes sociales (WhatsApp, Facebook, X) libres.',
        );
        print(
          '4. Todo Incluido 7 Días (\$13.000): Ofrece 10 GB de navegación libre, minutos ilimitados a todo destino nacional, mensajes de texto ilimitados y uso de WhatsApp, Facebook y X.',
        );

        opcion = int.parse(stdin.readLineSync()!);

        switch (opcion) {
          case 1:
            do {
              print('Ingrese la contraseña para confirmar la recarga');
              password = stdin.readLineSync()!;

              if (password.length <= 8) {
                print('La contraseña es incorrecta');
              }
            } while (password.length <= 8);

            if (saldo >= 2500) {
              saldo = saldo - 2500;

              print(
                'El paquete Todo Incluido 1 Día fue instalado correctamente.',
              );
              print('Su nuevo saldo es de \$$saldo');
            } else {
              print('Su saldo es insuficiente');
            }

            break;

          case 2:
            do {
              print('Ingrese la contraseña para confirmar la recarga');
              password = stdin.readLineSync()!;

              if (password.length <= 8) {
                print('La contraseña es incorrecta');
              }
            } while (password.length <= 8);

            if (saldo >= 4000) {
              saldo = saldo - 4000;

              print('Todo Incluido 3 Días instalado correctamente.');
              print('Su nuevo saldo es de \$$saldo');
            } else {
              print('Su saldo es insuficiente');
            }

            break;
                      case 3:
            do {
              print('Ingrese la contraseña para confirmar la recarga');
              password = stdin.readLineSync()!;

              if (password.length <= 8) {
                print('La contraseña es incorrecta');
              }
            } while (password.length <= 8);

            if (saldo >= 7000) {
              saldo = saldo - 7000;

              print('Todo Incluido 6 Días instalado correctamente.');
              print('Su nuevo saldo es de \$$saldo');
            } else {
              print('Su saldo es insuficiente');
            }

            break;

          case 4:
            do {
              print('Ingrese la contraseña para confirmar la recarga');
              password = stdin.readLineSync()!;

              if (password.length <= 8) {
                print('La contraseña es incorrecta');
              }
            } while (password.length <= 8);

            if (saldo >= 13000) {
              saldo = saldo - 13000;

              print('Todo Incluido 7 Días instalado correctamente.');
              print('Su nuevo saldo es de \$$saldo');
            } else {
              print('Su saldo es insuficiente');
            }

            break;

          default:
            print('Opción incorrecta');
            break;
        }
        break;

      case 5:
        String numeroCuenta;
        double cuenta2 = 444000;
        double cantidad;

        do {
          print('Ingrese el numero de cuenta a transferir');
          numeroCuenta = stdin.readLineSync()!;

          if (numeroCuenta.length <= 8) {
            print('El numero de cuenta no fue encontrado');
          }
        } while (numeroCuenta.length <= 8);

        print('Esta cuenta actualmente tiene un saldo de \$$cuenta2');
        print('Su cuenta actualmente tiene un saldo de \$$saldo');

        print('Ingrese la cantidad a transferir');

        do {
          cantidad = double.parse(stdin.readLineSync()!);

          if (cantidad <= 0) {
            print('No puede ingresar números negativos.');
          }
        } while (cantidad <= 0);

        if (cantidad <= saldo) {
          do {
            print('Ingrese la contraseña para confirmar la transacción');
            password = stdin.readLineSync()!;

            if (password.length <= 8) {
              print('La contraseña es incorrecta');
            }
          } while (password.length <= 8);

          saldo = saldo - cantidad;
          cuenta2 = cuenta2 + cantidad;

          print('La transacción fue exitosa');
          print('Su saldo quedó en: \$$saldo');
          print('El saldo de la otra cuenta es: \$$cuenta2');
        } else {
          print('Saldo insuficiente para realizar la transferencia');
        }

        break;

      case 6:
        print('Has salido correctamente del menú');
        break;

      default:
        print('Opción incorrecta');
        break;
    }

    if (opcion != 6) {
      print('Presione Enter para volver al menú...');
      stdin.readLineSync();
    }

  } while (opcion != 6);
}
