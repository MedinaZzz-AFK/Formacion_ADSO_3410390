import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizNum = [];
  int columnas = 10;
  int filas = 10;
  int numeroIng;
  int mayor;
  int posFila = 0;
  int posColumna = 0;

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

  mayor = matrizNum[0][0];

  for (var i = 0; i < filas; i++) {
    for (var j = 0; j < columnas; j++) {
      if (matrizNum[i][j] > mayor) {
        mayor = matrizNum[i][j];
        posFila = i;
        posColumna = j;
      }
    }
  }

  print("el mayor es: $mayor y su posicion es [${posFila}, ${posColumna}]");
}