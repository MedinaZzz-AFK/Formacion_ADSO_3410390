import 'dart:io';

void main(List<String> args) {
   /*en una polla mundialista del CPIC se debe conocer cuantos partidos ah acertado hasta el momento un participante */

int cantPartidosJug = 14;
int contAcertados = 0;
int acertado;

for(int i=0; i<=cantPartidosJug; i++){
  print("ingrese resultado del partido ${i+1}. 1. ACERTADO 2. NO ACERTADO");
  acertado = int.parse(stdin.readLineSync()!);
if(acertado == 1){
  contAcertados++;
}
}
print("la cantidad de partidos acertados del participante es: $contAcertados");
}