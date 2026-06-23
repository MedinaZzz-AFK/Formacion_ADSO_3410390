/* eje6. En el procesamiento del café, el control térmico es vital. Escribe un programa que simule el monitoreo de temperatura de una máquina durante el proceso de tostión. La temperatura inicial es de 180°C y debe aumentar progresivamente una cantidad de grados específica y que será aleatoria hasta alcanzar el punto ideal de tostión a 200°C.Se debe consultar la manera de generar un número aleatorio en Dart */

import 'dart:math';

void main() {
  double temperaturaActual = 180.0;
  double temperaturaIdeal = 200.0;
  int incrementoContador = 1;

  // EXPLICACIÓN: Aquí creamos nuestra "máquina de la suerte" llamada 'aleatorio'.
  // Es como comprar un dado o una tómbola que usaremos más abajo para sacar los números.
  Random aleatorio = Random();

  print("Proceso TOSTION DE CAFE");
  print("Temperatura inicial: $temperaturaActual°C\n");

  while (temperaturaActual < temperaturaIdeal) {
    /* EXPLICACIÓN:
      1. 'aleatorio.nextDouble()' nos da un número chiquito entre 0 y 1 (por ejemplo: 0.5).
      2. Lo multiplicamos por 5 para que el número crezca (siguiendo el ejemplo: 0.5 * 5 = 2.5).
      3. Le sumamos 1 para que nunca nos dé cero (2.5 + 1 = 3.5 grados de aumento).
      Así nos aseguramos de que la máquina suba entre 1 y 6 grados cada vez.
    */
    double incremento = (aleatorio.nextDouble() * 5) + 1;

    temperaturaActual += incremento;

    if (temperaturaActual > temperaturaIdeal) {
      temperaturaActual = temperaturaIdeal;
    }

    print(
      "Monitoreo #$incrementoContador: +${incremento.toStringAsFixed(2)}°C -> Temperatura actual: ${temperaturaActual.toStringAsFixed(2)}°C",
    );

    incrementoContador++;
  }

  print(
    "\n¡Punto ideal alcanzado! Proceso de tostión finalizado exitosamente a $temperaturaIdeal°C.",
  );
}
