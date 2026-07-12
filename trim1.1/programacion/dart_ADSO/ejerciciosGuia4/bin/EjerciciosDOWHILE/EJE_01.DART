import 'dart:io';

void main() {
  double precio;
  int cantidad;
  double subtotal;
  double total = 0;

  String respuesta;

  do {
    print("Ingrese el precio del artículo:");
    precio = double.parse(stdin.readLineSync()!);

    print("Ingrese la cantidad:");
    cantidad = int.parse(stdin.readLineSync()!);

    subtotal = precio * cantidad;
    total = total + subtotal;

    print("Subtotal del artículo: \$${subtotal.toStringAsFixed(2)}");

    print("\n¿Desea ingresar otro artículo? (S/N)");
    respuesta = stdin.readLineSync()!.toUpperCase();

  } while (respuesta == "S");

  print("\n==========================");
  print("Total de la compra: \$${total.toStringAsFixed(2)}");
}