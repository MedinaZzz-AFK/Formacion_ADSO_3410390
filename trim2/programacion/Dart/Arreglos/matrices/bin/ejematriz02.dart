import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizNum = [];
  int filas = 3;
  int columnas = 4;
  //Ingreso de datos a la matriz por parte del ususario
  for (var i = 0; i < filas; i++) { //ciclo externo recorre las filas
    List<int> fila = [];
    for (var j = 0; j < columnas; j++) {
      print("Ingrese número para la posicion ($i,$j)");
      int valor = int.parse(stdin.readLineSync()!);
      fila.add(valor);
    }
    matrizNum.add(fila);
  }
  print("Datos de la matriz");
  for (var element in matrizNum) {
    print(element);
  }
  //Imprimir la matriz valor por valor
  for (var i = 0; i < filas; i++) {
    for (var j = 0; j < columnas; j++) {
      print("valor {$i,$j} = ${matrizNum[i][j]}");
    }
    print("_"*20);
  }
}