/* Se realiza la convocatoria para estudiarel programa de ADSO en el CPIC. Del total de aspirantes se desea sber cuantos son hombres, y cuantas mujeres mayores de edad. */

import 'dart:io';

void main(List<String> args) {
  int cantHombres = 0;
  int cantMujeres = 0;
  int totalAspirantes;
  int opcion;
  int edad;
  int total;

  stdout.write("ingrese la cantidad total de aspirantes: ");
  totalAspirantes = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= totalAspirantes; i++) {

    print("el aspirante numero $i de $totalAspirantes");
    print("porfavor seleccione su opcion de genero");
    print("1. HOMBRE");
    print("2.MUJER");
    print("3. PREFIERO NO ESPECIFICARLO");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        cantHombres++;
        break;
      case 2:
        print("porfavor digite su edad: ");
        edad = int.parse(stdin.readLineSync()!);
        if(edad >= 18){
          cantMujeres ++;
        }else{
          "Aspirante registrada, pero es menor de edad";
        }
        break;
      case 3:
        print("usted tendra que especificar su genero fisicamente en secretaria");
        break;
      default:
       print("opcion no valida");
       i--;
    }
  }
  total = cantHombres + cantMujeres;

  print("la cantidad de hombres es: $cantHombres");
  print("la cantidad de mujeres mayores de edad es: $cantMujeres");
  print("la cantidad total de aspirantes es: $total");

}