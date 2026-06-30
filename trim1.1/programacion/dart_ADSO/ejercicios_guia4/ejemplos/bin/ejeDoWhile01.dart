/*simular el lanzamiento de un dado de 6 caras. se debe lanzar el dado hasta que caiga el numero 6. En ese momento se le dira al usuario que gano con x cantidad de intentos. */


import 'dart:math';

void main(List<String> args) {
  int intentos=0; //vrb contador
  Random lanzamiento = Random(); //crear objeto de la clase Random
  int valorDado;
  do {
    intentos++;
    print("Lanzamiento #$intentos del dado");
    valorDado = lanzamiento.nextInt(6)+1;
  } while (valorDado<=6);

  print("Has ganado con el #6 con $intentos intento´s");
}