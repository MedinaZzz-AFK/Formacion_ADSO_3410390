/* 9. El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año
2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las
personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo
de menos de 25 años.
Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una
antigüedad en su empleo de 25 años o más.
Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una
antigüedad en su empleo de 25 años o mas.
Determinar en que tipo de jubilación, quedara adscrita una persona. */

import 'dart:io';

void main(List<String> args) {
  double tiempoEx, anos;

  print("porfavor digite cuanto tiempo lleva en su empleo");
  tiempoEx = double.parse(stdin.readLineSync()!);

  print("porfavor digite su edad");
  anos = double.parse(stdin.readLineSync()!);

  if (anos >= 60 && tiempoEx < 25) {
    print("su estado de jubilacion es: (Jubilacion por edad)");
  } else {
    if (anos < 60 && tiempoEx >= 25) {
      print("su estado de jubilacion es: (Jubilacion por antiguedad joven)");
    } else {
      print("su estado de jubilacion es: (Jubilacion por antiguedad adulta)");
    }
  }
}
