import 'dart:io';

void main() {
  int cantidad;
  int contador = 1;

  double sueldoBase;
  double venta1;
  double venta2;
  double venta3;

  double totalVentas;
  double comision;
  double sueldoTotal;

  print("Ingrese la cantidad de vendedores:");
  cantidad = int.parse(stdin.readLineSync()!);

  while (contador <= cantidad) {
    print("\nVendedor $contador");

    print("Ingrese el sueldo base:");
    sueldoBase = double.parse(stdin.readLineSync()!);

    print("Ingrese el valor de la venta 1:");
    venta1 = double.parse(stdin.readLineSync()!);

    print("Ingrese el valor de la venta 2:");
    venta2 = double.parse(stdin.readLineSync()!);

    print("Ingrese el valor de la venta 3:");
    venta3 = double.parse(stdin.readLineSync()!);

    totalVentas = venta1 + venta2 + venta3;
    comision = totalVentas * 0.10;
    sueldoTotal = sueldoBase + comision;

    print("");
    print("Comisión: \$${comision.toStringAsFixed(2)}");
    print("Sueldo total: \$${sueldoTotal.toStringAsFixed(2)}");

    contador++;
  }
}