import 'dart:io';

void main(List<String> args) {
  /*3. Una persona quiere comprarse una moto que cuesta 2,000,000 pesos. Cada semana logra guardar x cantidad de dinero pesos en su alcancía.
Utiliza un bucle while para calcular y mostrar cuántas semanas necesita ahorrar para alcanzar o superar la meta de su juguete.*/

  int valorMoto = 2000000;
  double ahorroSemanal;
  double ahorroTotal = 0; //Vble tipo acumulador
  int contSemanas = 0;

  while (ahorroTotal < valorMoto) {
    print('Ingrese el valor ahorrado en la semana #${contSemanas+1}');
    ahorroSemanal = double.parse(stdin.readLineSync()!);
    //El while tambien se utiliza para validación de datos
    while (ahorroSemanal < 0) {
      print('El ahorro no puede ser negativo');
      print('Ingrese de nuevo el valor ahorrado en la semana #${contSemanas+1}');
      ahorroSemanal = double.parse(stdin.readLineSync()!);
    }
    ahorroTotal = ahorroTotal + ahorroSemanal;
    if (ahorroTotal >= valorMoto) {
      print('Felicitaciones, has alcanzado tu meta de ahorro para comprar la moto');
    }
    contSemanas++;
  }
  print('Se necesitaron $contSemanas semana(s), y se ahorró ne total $ahorroTotal');
}
