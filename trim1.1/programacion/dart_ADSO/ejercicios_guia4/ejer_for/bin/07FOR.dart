/* 7. Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10
kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda */

import 'dart:io';

void main(List<String> args) {
  double kilos, precioKilo, subtotal, totalCliente, totalTienda = 0;

  for (var i = 1; i <= 15; i++) {
    print("Porfavor digite los kilos comprados por el cliente $i");
    kilos = double.parse(stdin.readLineSync()!);

    print("Porfavor digite el precio por kilo");
    precioKilo = double.parse(stdin.readLineSync()!);

    subtotal = kilos * precioKilo;

    if (kilos > 10) {
      totalCliente = subtotal - (subtotal * 0.15);
    } else {
      totalCliente = subtotal;
    }

    print("El cliente $i pagara: $totalCliente");
    totalTienda = totalTienda + totalCliente;
  }

  print("El total percibido por la tienda es: $totalTienda");
}
