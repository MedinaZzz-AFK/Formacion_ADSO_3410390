import 'dart:io';

void main(List<String> args) {
  /*5. Un inquilino ha llegado a un acuerdo para no incurrir en mora, realizando abonos parciales mensuales a una deuda 
pendiente de arrendamiento. Escribe un programa que simule el registro de abonos que se preguntarán al usuario para saldar
una deuda inicial de 500,000 pesos usando un bucle while, hasta que el saldo quede exactamente en cero*/

  int deuda = 500000;
  int abono = 0;

  while (deuda > 0) {
    print('Saldo pendiente: \$$deuda');

    stdout.write('Ingrese el valor del abono: ');
    abono = int.parse(stdin.readLineSync()!);

    if (abono > deuda) {
      print('El abono no puede ser mayor que el saldo pendiente.');
    } else {
      deuda -= abono;
    }
  }

  print('¡Deuda saldada completamente!');
}
