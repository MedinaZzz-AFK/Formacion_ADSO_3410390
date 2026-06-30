/* EJE 05. crear las siguientes opciones de una aplicacion bancaria. cada una de ellas debe ser funcional y cumplir con todas las validaciones requeridas:

MENU APP BANCARIA:
1.Consultar saldo
2.Ingresar fondos
3.Realizar retiro
4.Recarga de cellular
5.Tranferir a otra cuenta
6.Salir
-La aplicacion debe simular un login de usuario
-la app no debe permitir ingresar numeros negativos
-no pueden haber saldos negativos
-se debe limpiar la pantalla despues de cada accion */

import 'dart:io';

void main(List<String> args) {
  double saldoUser = 153700,
      saldoUser2 = 50000,
      dineroIngresado,
      dineroRetirar,
      recarga,
      transferir,
      recargaSaldo;
  int opcion, numeroCel, digitosDestinatario, opcionDs, opcionRecagra;
  String nombreUser = "jero", contrasena = "1234", nombreUser2 = "carlitos";
  String nombreEntrada, claveEntrada;
  bool login = false;

  while (!login) {
    print("-INICIO DE SECION-");
    stdout.write("Usuario: ");
    nombreEntrada = stdin.readLineSync()!;
    stdout.write("contraseña: ");
    claveEntrada = stdin.readLineSync()!;

    if (nombreEntrada == nombreUser && claveEntrada == contrasena) {
      login = true;
      print("acceso concedido");
    } else {
      print("datos incorrectos. intentalo de nuevo luego...");
    }
  }

  do {
    print("MENU BANCARIO");
    print("--------------");
    print("porfavor seleccione una opcion");
    print("1. consultar saldo");
    print("2.Ingresar fondos");
    print("3.Realizar retiro");
    print("4.Recarga de cellular");
    print("5.Tranferir a otra cuenta");
    print("6.Salir");
    opcion = int.parse(stdin.readLineSync()!);
    print("-----------------------------------");

    switch (opcion) {
      case 1:
        print("su saldo es de $saldoUser");
        break;

      case 2:
        print("porfavor Escriba cuanto dinero va a ingresar");
        dineroIngresado = double.parse(stdin.readLineSync()!);
        if (dineroIngresado < 0) {
          print("No se permiten cantidades negativas");
        } else {
          saldoUser = saldoUser + dineroIngresado;
          print("perfecto! su nuevo saldo es de $saldoUser");
        }
        break;

      case 3:
        print("porfavor digite cuanto dinero va a retirar");
        dineroRetirar = double.parse(stdin.readLineSync()!);
        if (dineroRetirar < 0) {
          print("No se permiten cantidades negativas");
        } else if (dineroRetirar > saldoUser) {
          print(
            "lo sentimos, sus fondos no son suficientes para el retiro porfavor intentelo de nuevo",
          );
        } else {
          saldoUser = saldoUser - dineroRetirar;
          print(
            "perfecto! usted ah retirado $dineroRetirar pesos; su saldo actual es $saldoUser",
          );
        }
        break;

      case 4:
        print("porfavor digite su numero de celular");
        numeroCel = int.parse(stdin.readLineSync()!);
        print("porfavor digite de cuanto sera la recarga");
        recarga = double.parse(stdin.readLineSync()!);
        if (recarga < 0) {
          print("No se permiten cantidades negativas");
        } else if (recarga > saldoUser) {
          print("lo sentimos, su saldo no es suficiente para hacer la recarga");
        } else {
          print("porfavor eliga entre nuestros paquetes de recarga");
          print(
            "1. paquete. 3 Días + 400MB + HOY REGALO de 200 MB; valor: \$6.000",
          );
          print(
            "2. paquete. 6 Días + 4.2 GB + HOY SUPER REGALO de 1GB; Valor: \$9.000",
          );
          print("3. paquete. 20 días + 30GB; valor: \$20.000");
          print("4. paquete. recarga normal para saldo");
          print("escriba su eleccion: ");
          opcionRecagra = int.parse(stdin.readLineSync()!);
          switch (opcionRecagra) {
            case 1:
              if (saldoUser < 6000) {
                print("lo sentimos, su saldo es insuficiente");
              } else {
                saldoUser = saldoUser - 6000;
                print(
                  "su recarga ah sido un exito, su saldo restante es de: $saldoUser",
                );
              }
              break;

            case 2:
              if (saldoUser < 9000) {
                print("lo sentimos, su saldo es insuficiente");
              } else {
                saldoUser = saldoUser - 9000;
                print(
                  "su recarga ah sido un exito, su saldo restante es de: $saldoUser",
                );
              }
              break;

            case 3:
              if (saldoUser < 20000) {
                print("lo sentimos, su saldo es insuficiente");
              } else {
                saldoUser = saldoUser - 20000;
                print(
                  "su recarga ah sido un exito, su saldo restante es de: $saldoUser",
                );
              }
              break;

            case 4:
              print("De cuanto sera su recarga de saldo?");
              recargaSaldo = double.parse(stdin.readLineSync()!);
              if (saldoUser < recargaSaldo) {
                print("lo sentimos, su saldo es insuficiente");
              } else {
                saldoUser = saldoUser - recargaSaldo;
                print(
                  "su recarga de un valor de $recargaSaldo ah sido exitosa, su saldo restante es: $saldoUser",
                );
              }
              break;
            default:
          }
        }
        break;

      case 5:
        print(
          "porfavor digite cuanto va a transferir a la otra cuenta, su saldo es de: $saldoUser pesos",
        );
        transferir = double.parse(stdin.readLineSync()!);
        if (transferir < 0) {
          print("No se permiten cantidades negativas");
          break;
        }
        if (transferir > saldoUser) {
          print("su saldo no es suficiente, porfavor ingrese un saldo valido");
          break;
        }
        print(
          "porfavor ingrese el numero de cuenta del Destinatario ( Recuerde que deben ser entre 14 y 19 digitos )",
        );
        digitosDestinatario = int.parse(stdin.readLineSync()!);
        print("el saldo de la cuenta a destino es de: $saldoUser2");
        print("confirma la transaccion ( 1. SI / 2. NO)");
        opcionDs = int.parse(stdin.readLineSync()!);
        if (opcionDs == 1) {
          saldoUser = saldoUser - transferir;
          saldoUser2 = saldoUser2 + transferir;
          print(
            "usted ah enviado $transferir pesos, a la cuenta $digitosDestinatario, su saldo restante es de $saldoUser pesos, gracias por sar nuestros servicios",
          );
          print(
            "el nuevo saldo de la cuenta destino es de: $saldoUser2 pesos, gracias por usar nuestros servicios",
          );
        }
        break;

      case 6:
        print(
          "gracias por usar nuestros servicios $nombreUser, nos vemos en la proxima! ",
        );
        break;

      default:
        print("Opción no válida.");
    }

    if (opcion != 6) {
      print("Presione ENTER para continuar...");
      stdin.readLineSync();
      for (int i = 0; i < 15; i++) print("");
    }
  } while (opcion != 6);
}
