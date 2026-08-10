import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizNum = [];
  int columnas = 6;
  int filas = 5;
  int numeroIng;
  int acumulador = 0;

  print("ingrese los numeros porfavor");

  for (var i = 0; i < filas; i++) {
    List<int> fila = [];
    for (var j = 0; j < columnas; j++) {
      print("ingrese el numero para la posicion $i$j");
      numeroIng = int.parse(stdin.readLineSync()!);
      fila.add(numeroIng);
    }
    matrizNum.add(fila);
  }

  for (var i = 0; i < filas; i++) {
    for (var j = 0; j < columnas; j++) {
      acumulador = acumulador + matrizNum[i][j];
    }
  }

  print("el valor de la suma es $acumulador");
  print("-" * 25);
  print(matrizNum);
}
