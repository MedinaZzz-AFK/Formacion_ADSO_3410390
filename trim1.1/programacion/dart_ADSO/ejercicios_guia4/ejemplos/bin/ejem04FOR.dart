/* en una conferenca en el milton se requiere saber cuantos aprendices hay de ADSO, cuantos de Automotriz y cuantos de mecanizado. se debe solicitar al usuario la cantidad total de aprendices. */

import 'dart:io';

void main(List<String> args) {
  int cantADSO = 0;
  int cantAutomotriz = 0;
  int cantMecanica = 0;
  int totalAprendices;
  int opcion;
  int total;

  stdout.write("ingrese la cantidad total de aprendices: ");
  totalAprendices = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= totalAprendices; i++) {
    print("el aprendiz $i de $totalAprendices");
    print("porfavor seleccione la opcion de formacion 1.ADSO 2.Automotriz 3.Mecanica");
    stdout.write("seleccione porfavor una opcion del 1-3: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
      cantADSO ++;
        break;
      case 2:
      cantAutomotriz ++;
      break;
      case 3:
      cantMecanica ++;  
      default:
      print("opcion no valida");
    }
  }
  total = cantADSO + cantMecanica + cantAutomotriz;

  print("la cantidad de aprendices en ADSO es: $cantADSO");
  print("la cantidad de aprendices en Automotriz es: $cantAutomotriz");
  print("la cantidad de aprendices en Mecanica es: $cantMecanica");
  print("la cantidad de aprendices en general es: $total");
}