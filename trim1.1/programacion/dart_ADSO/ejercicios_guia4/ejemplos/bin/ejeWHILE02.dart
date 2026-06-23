/* asignar tunos consecutivvos a los aprendices del programa ADSO que ingresan al laboratorio. Escribe un programa en dart que asigne e imprima los numeros de turno del 1 al 5 utilizando un bucle while.  */

void main(List<String> args) {
  int turno=1, limiteTurnos=5;

  print("sistema de registro CPIC");

  while (turno<=5) {
    print("se ha asignado el turno numero: $turno");
    turno++;
  }
  while (turno <= limiteTurnos) {
    print("se ha asignado el turno #$turno");
    turno++;
  }
}