import 'dart:io';

void main() {
  double precioKilo;
  double kilos;
  double total;
  double descuento;
  double pagar;
  double totalTienda = 0;

  print("Ingrese el precio por kilo de naranjas:");
  precioKilo = double.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 15; i++) {
    print("\nCliente $i");

    print("Ingrese los kilos comprados:");
    kilos = double.parse(stdin.readLineSync()!);

    total = kilos * precioKilo;

    if (kilos > 10) {
      descuento = total * 0.15;
    } else {
      descuento = 0;
    }

    pagar = total - descuento;

    print("El cliente debe pagar: \$${pagar.toStringAsFixed(2)}");

    totalTienda = totalTienda + pagar;
  }

  print("\nTotal recibido por la tienda: \$${totalTienda.toStringAsFixed(2)}");
}