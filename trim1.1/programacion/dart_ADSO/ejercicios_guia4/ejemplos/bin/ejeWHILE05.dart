/* 5. Un inquilino ha llegado a un acuerdo para no incurrir en mora, realizando abonos parciales mensuales a una deuda 
pendiente de arrendamiento. Escribe un programa que simule el registro de abonos que se preguntarán al usuario para saldar
una deuda inicial de 500,000 pesos usando un bucle while, hasta que el saldo quede exactamente en cero. */

import 'dart:io';

void main(List<String> args) {
  double abonoMensual, deudaPagada = 0, deudaTotal = 500000, dineroCl;
  int numMes = 0;

  print(
    "SU DEUDA ES DE \$500.000 PESOS, PORFAVOR ASEGURESE DE ACORDAR CON SUS PAGOS!",
  );

  print("-------------------------------------------------------");

  while (deudaPagada <= deudaTotal) {
    print("ingrese cuanto va a pagar en el mes #${numMes + 1}");
    abonoMensual = double.parse(stdin.readLineSync()!);

    while (abonoMensual < 0) {
      if (abonoMensual < 0) {
        print(
          "el valor no puede ser negativo porfavor ingrese de nuevo cuanto va a pagar en el mes #${numMes + 1}.",
        );
        abonoMensual = double.parse(stdin.readLineSync()!);
      }
    }
    deudaPagada = abonoMensual + deudaPagada;

    if (deudaTotal > deudaPagada) {
      print(
        "gracias por seguir pagando su deuda, su restante a pagar es ${deudaTotal - deudaPagada} pesos",
      );
    }

    if (deudaPagada > deudaTotal) {
      dineroCl = deudaPagada - deudaTotal;
      deudaPagada = deudaTotal;
      print(
        "gracias por seguir pagando su deuda, su restante a pagar es ${deudaTotal - deudaPagada} pesos",
      );
      print("el dinero que le a sobrado es: $dineroCl");
    }

    if (deudaPagada >= deudaTotal) {
      print("felicidades ya pagaste tu deuda");
      break;
    }

    numMes++;
  }
}
