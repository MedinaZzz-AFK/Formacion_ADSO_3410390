

import 'dart:io';

void main(List<String> args) {
  //en una polla mundialista del CPIC se debe conocer cuantos partidos ha acertado hasta el momento un participante
  int cantpartidos = 14;
  int cantAcertados = 0;
  int acertado;
  for (int i = 0; i < cantpartidos; i++) {
    print("Ingrese resultado partido ${i+1} 1.ACERTADO 2.NO ACERTADO");
  }

  acertado = int.parse(stdin.readLineSync()!);
  if (acertado == 1) {
    cantAcertados++;
  }
print("La cantidad de partidos acertados del participante es: $cantAcertados");
}
