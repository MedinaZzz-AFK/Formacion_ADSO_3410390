/* 2. Un propietario necesita calcular el impuesto anual de su vehículo. Las normativas
fiscales establecen que los vehículos cuyo avalúo comercial supere los
$150.000.000 (considerados de gama alta o lujo) deben pagar una tarifa del 2.5%
sobre dicho valor. Por el contrario, los vehículos con un avalúo igual o menor a este
límite pagan una tarifa del 1.5%. Solicite la marca/modelo del vehículo y su avalúo
comercial actual. Determine cuál es el porcentaje aplicado y calcule el valor total del
impuesto a pagar este año. */

import 'dart:io';

void main(List<String> args) {
  double valorVehiculo, impuestoAnual, porcentajeImpuesto, tarifa;
  String marca;
  int modelo;

  print("ingrese la marca de su vehiculo");
  marca = stdin.readLineSync()!;
  print("ingrese que modelo es su vehiculo");
  modelo = int.parse(stdin.readLineSync()!);
  print("ingrese el avalou del vehiculo");
  valorVehiculo = double.parse(stdin.readLineSync()!);

  if(valorVehiculo > 150000000){
    tarifa = 2.5;
    porcentajeImpuesto = valorVehiculo * 0.025;
  }else{
    tarifa = 1.5;
    porcentajeImpuesto = valorVehiculo * 0.015;
  }
  impuestoAnual = valorVehiculo + porcentajeImpuesto;

  print("la tarifa aplicada es de $tarifa %");
  print("el impuesto es de $porcentajeImpuesto");
  print("el total a pagar del impuesto anual es de $impuestoAnual");


}