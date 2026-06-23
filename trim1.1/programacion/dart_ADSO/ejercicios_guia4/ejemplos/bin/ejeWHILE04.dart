/* 3. Una persona quiere comprarse una moto que cuesta 2,000,000 pesos. Cada semana logra guardar x cantidad de dinero pesos en su alcancía.
Utiliza un bucle while para calcular y mostrar cuántas semanas necesita ahorrar para alcanzar o superar la meta de su juguete. */

//el while tambien se utiliza para validacion de datos
import 'dart:io';

void main(List<String> args) {
  double valorMoto = 2000000;
  double ahorroSemanal, ahorroTotal = 0;
  int contSemanas = 0;

  while (ahorroTotal < valorMoto) {
    print("ingrese el valor ahorrado en la semana #${contSemanas + 1}");
    ahorroSemanal = double.parse(stdin.readLineSync()!);

    while (ahorroSemanal < 0) {
      print("el ahorro no puede ser negativo");
      print(
        "ingrese de nuevo el valor ahorrado en la semana #${contSemanas + 1}",
      );
      ahorroSemanal = double.parse(stdin.readLineSync()!);
    
    }
    ahorroTotal = ahorroTotal + ahorroSemanal;
    if (ahorroTotal == valorMoto) {
      print("felicitaciones! haz alcanzado el objetivo de la moto");
    }
    contSemanas++;
  }

  print(
    "se necesitaron $contSemanas semana(s), y se ahorro en total $ahorroTotal",
  );
}
