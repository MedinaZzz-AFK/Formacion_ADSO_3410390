void main(List<String> args) {

  /*Un sistema de resgisto en el CPIC necesota asignar turnos consecutivos a los aprendiecs del programa ADSO que ingresan al laboratorio. Escribe un programa en Dart que asigne e imprima los números de tuno del 1 al 5 utilizando un bucle while*/

  int turno = 1;
  int limiteTurnos = 5;
  print('Sistema de registro CPIC');
  while (turno <= limiteTurnos) {
    print('Se ha asignado el turno #$turno');
    turno++;
  }
  print('Se han asignado todos los turnos disponibles');
}