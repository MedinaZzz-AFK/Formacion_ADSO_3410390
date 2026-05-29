/* 10. Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico
determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel
de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una
persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta
dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina
su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la
siguiente:
EDAD NIVEL HEMOGLOBINA
0 - 1 mes 13 - 26 g%
> 1 y < = 6 meses 10 - 18 g%
> 6 y < = 12 meses 11 - 15 g%
> 1 y < = 5 años 11.5 - 15 g%
> 5 y < = 10 años 12.6 - 15.5 g%
> 10 y < = 15 años 13 - 15.5 g%
mujeres > 15 años 12 - 16 g%
hombres > 15 años 14 - 18 g% */

import 'dart:io';

void main(List<String> args) {
  double edad;
  double hemoglobina;
  String? sexo;
  String? tipoEdad;
  double minHemo = 0;
  double maxHemo = 0;
  String resultado = "";

  print("¿La edad a ingresar es en 'meses' o en 'años'?");
  tipoEdad = stdin.readLineSync();

  print("Por favor ingrese el valor numérico de la edad:");
  edad = double.parse(stdin.readLineSync()!);

  print("Por favor ingrese el nivel de hemoglobina (g%):");
  hemoglobina = double.parse(stdin.readLineSync()!);

  if (tipoEdad == "meses") {
    if (edad >= 0 && edad <= 1) {
      minHemo = 13;
      maxHemo = 26;
    }
    if (edad > 1 && edad <= 6) {
      minHemo = 10;
      maxHemo = 18;
    }
    if (edad > 6 && edad <= 12) {
      minHemo = 11;
      maxHemo = 15;
    }
  } else {
    if (edad > 1 && edad <= 5) {
      minHemo = 11.5;
      maxHemo = 15;
    }
    if (edad > 5 && edad <= 10) {
      minHemo = 12.6;
      maxHemo = 15.5;
    }
    if (edad > 10 && edad <= 15) {
      minHemo = 13;
      maxHemo = 15.5;
    }
    if (edad > 15) {
      print("Por favor ingrese el sexo de la persona (mujeres / hombres):");
      sexo = stdin.readLineSync();
      if (sexo == "mujeres") {
        minHemo = 12;
        maxHemo = 16;
      } else {
        minHemo = 14;
        maxHemo = 18;
      }
    }
  }

  if (hemoglobina < minHemo) {
    resultado = "Anemia";
  }
  if (hemoglobina >= minHemo && hemoglobina <= maxHemo) {
    resultado = "Normal";
  }
  if (hemoglobina > maxHemo) {
    resultado = "Cardiopatía";
  }

  print("Rango de hemoglobina correspondiente: $minHemo - $maxHemo g%");
  print("Nivel del paciente: $hemoglobina g%");
  print("Resultado final: El paciente tiene $resultado");
}
