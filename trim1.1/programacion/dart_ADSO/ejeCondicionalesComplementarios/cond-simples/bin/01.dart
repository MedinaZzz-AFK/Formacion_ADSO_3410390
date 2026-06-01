import 'dart:io';

void main(List<String> args) {
  print("---gesion de auxilios de transporte CPIC---");

  String nombre, municipio;
  double auxilioBase, totalRecibir, diasAsistencia;

  print("cual es su nombre");
  nombre = stdin.readLineSync() ??"";

  print("En que municipio vive");
  municipio = stdin.readLineSync()!.trim().toLowerCase();

  print("ingrese la cantidad de dias de asistencia");
  diasAsistencia = double.parse(stdin.readLineSync()!);
  auxilioBase = diasAsistencia * 5000;
  totalRecibir = auxilioBase;
  if(municipio != "manizales"){
    double extra = auxilioBase * 0.15;
    totalRecibir = auxilioBase + extra;
  }
  print("$nombre, el total a recibir es: $totalRecibir");
}
