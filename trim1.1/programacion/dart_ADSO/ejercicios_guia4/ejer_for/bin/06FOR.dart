/* 6. Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los
niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las
categorías con base en la sig, tabla
CATEGORIA EDAD
Niños 0 – 12
Jóvenes 13 - 29
Adultos 30 - 59
Adultos Mayores 60 en adelante
. Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoria */

import 'dart:io';

void main(List<String> args) {
  int edad, cantNinos = 0, cantJovenes = 0, cantAdultos = 0, cantMayores = 0;
  double peso,
      pesoNinos = 0,
      pesoJovenes = 0,
      pesoAdultos = 0,
      pesoMayores = 0;

  for (var i = 1; i <= 3; i++) {
    print("Hola! porfavor digite su edad");
    edad = int.parse(stdin.readLineSync()!);
    print("porfavor digite su peso");
    peso = double.parse(stdin.readLineSync()!);

    if (edad >= 0 && edad <= 12) {
      pesoNinos = pesoNinos + peso;
      cantNinos++;
    } else {
      if (edad >= 13 && edad <= 29) {
        pesoJovenes = pesoJovenes + peso;
        cantJovenes++;
      } else {
        if (edad >= 30 && edad <= 59) {
          pesoAdultos = pesoAdultos + peso;
          cantAdultos++;
        } else {
          if (edad >= 60) {
            pesoMayores = pesoMayores + peso;
            cantMayores++;
          }
        }
      }
    }
  }

  print(
    "Niños encuestados: $cantNinos. Promedio de peso: ${pesoNinos / cantNinos}",
  );
  print(
    "Jóvenes encuestados: $cantJovenes. Promedio de peso: ${pesoJovenes / cantJovenes}",
  );
  print(
    "Adultos encuestados: $cantAdultos. Promedio de peso: ${pesoAdultos / cantAdultos}",
  );
  print(
    "Adultos Mayores encuestados: $cantMayores. Promedio de peso: ${pesoMayores / cantMayores}",
  );
}
