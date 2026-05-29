/* 3. El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
precio normal.
*/

import 'dart:io';

void main(List<String> args) {
  //definicion
  
  String? nombreTraje;
  double precioTrj, descuento, precioFinal, cantidad;

  //inicio


  print("porfavor escriba la cantidad de trajes que compro: ");
  cantidad = double.parse(stdin.readLineSync()!);

  print("escriba el modelo del traje");
  nombreTraje = stdin.readLineSync()!;

  print("escriba porfavor el valor del traje");
  precioTrj = double.parse(stdin.readLineSync()!);

  //proceso 

  precioFinal = precioTrj * cantidad;

  if(cantidad > 3){

    descuento = precioFinal * 0.17;
    precioFinal = precioFinal - descuento;
  }

  //finAlgortimo

  print("el precion final de su pedido de traje $nombreTraje es de: $precioFinal");
 


  


}