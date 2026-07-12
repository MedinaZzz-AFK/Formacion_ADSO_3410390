/* Eje 01. Se requiere simular el lanzamiento de un dado de 6 caras. Se debe lanzar el dado hasta que caiga en numero 6. En el momento se dirá al usuario ganó con X cantidad de intentos */

import 'dart:math';

void main(List<String> args) {
  int intentos = 0; // Vble tipo contador 
  Random lanzamiento = Random(); // Crear objeto de de la clase ramdom
  int valorDado;

  do {
    intentos++;
    print('Lanzamiento de dado');
    valorDado = lanzamiento.nextInt(6) + 1;
    print('Valor del dado: $valorDado');
  } while (valorDado != 6);
  print('Has ganado con el #6 con $intentos intento(s)');
}