/* 2. Un concesionario está cotizando el nuevo Volkswagen Nivus 2026. Primero, el
sistema pregunta el método de pago del cliente (ingrese "contado" o "credito").
a. Si el cliente paga de contado, el sistema anida una nueva condición: si el
valor del vehículo supera los $110.000.000, se otorga un descuento del 5%. Si
es menor o igual, se otorga un 2%.
b. Si el cliente paga a crédito, el sistema anida una validación diferente:
pregunta a cuántos meses es el plazo. Si el plazo es mayor a 60 meses, la cuotaMensual
de interés mensual es del 1.5%. Si es de 60 meses o menos, la cuotaMensual es del
1.2%. Desarrolle el algoritmo que capture el precio base del vehículo y ejecute
la lógica correspondiente para informar al cliente las condiciones finales. */

import 'dart:io';

void main(List<String> args) {
  int tipoPago;
  double valorVehiculo, descuento, totalVehiculo;
  double cuotaMensual;

  print("cual es el medio de pago (1.credito-2.contado)");
  tipoPago = int.parse(stdin.readLineSync()!);
  print("cual es el valor del vehicuulo");
  valorVehiculo = double.parse(stdin.readLineSync()!);
  if (tipoPago == 1) {
    //contado
    if (valorVehiculo > 110000000) {
      descuento = valorVehiculo * 0.05;
    } else {
      descuento = valorVehiculo * 0.02;
    }
    totalVehiculo = valorVehiculo - descuento;
    print(
      "el vehiculo se compra de contado y su valor total es de: $totalVehiculo",
    );
  } else {
    print("de cuantos meses es el plazo?");
    double plazo = double.parse(stdin.readLineSync()!);
    if (plazo > 60) {
      cuotaMensual = valorVehiculo * 0.015;
    } else {
      cuotaMensual = valorVehiculo * 0.012;
    }
    totalVehiculo = (plazo * cuotaMensual) + valorVehiculo;
    print("el vehiculo se compra a credito con un valor mensual de: $cuotaMensual");
    print("el total del vehiculo sera de: $totalVehiculo");
  }
}
