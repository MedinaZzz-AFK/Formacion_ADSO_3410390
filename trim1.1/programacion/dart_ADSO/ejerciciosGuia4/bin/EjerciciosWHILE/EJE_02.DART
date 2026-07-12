import 'dart:io';

void main() {
  int cantidadObreros;
  int contador = 1;

  double horas;
  double salario;
  double horasExtra;

  print("Ingrese la cantidad de obreros:");
  cantidadObreros = int.parse(stdin.readLineSync()!);

  while (contador <= cantidadObreros) {
    print("\nObrero $contador");

    print("Ingrese las horas trabajadas:");
    horas = double.parse(stdin.readLineSync()!);

    if (horas <= 40) {
      salario = horas * 20;
    } else {
      horasExtra = horas - 40;
      salario = (40 * 20) + (horasExtra * 25);
    }

    print("El salario semanal es: \$${salario.toStringAsFixed(2)}");

    contador++;
  }
}