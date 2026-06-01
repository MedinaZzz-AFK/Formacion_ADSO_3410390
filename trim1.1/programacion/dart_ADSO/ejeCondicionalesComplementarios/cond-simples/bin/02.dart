import 'dart:io';

void main(List<String> args) {
  /* 2. Una finca de café orgánico en Supía liquida el pago diario a sus recolectores
multiplicando los kilos recolectados por el precio del kilo. Si el recolector logra
entregar más de 50 kg en el día y el nivel de impurezas es menor al 5%, se le otorga
un bono adicional del 10% sobre su pago total. Construir un algoritmo que solicite
los kilos, el porcentaje de impurezas y el precio por kilo, calculando el pago final. */

double kilosR, precioK, nivelImp;
double pagoBase, pagoFinal, bono;

print("ingrese la cantidad de kilos recolectads");
kilosR = double.parse(stdin.readLineSync()!);

print("ingrese el precio del kilo");
precioK = double.parse(stdin.readLineSync()!);

print("ingrese el nivel de impureza (ej. 3.5)");
nivelImp = double.parse(stdin.readLineSync()!);
pagoBase = kilosR * precioK;
pagoFinal = pagoBase;

if(kilosR > 50 && nivelImp < 5){

  bono = pagoBase * 0.10;
  pagoFinal = pagoBase + bono;
}

print("para los $kilosR kilos recolectados, el pago es de: $pagoFinal");
}