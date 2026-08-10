import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizA = [];
  List<List<int>> matrizB = [];
  List<List<int>> matrizC = [];
  int dimension = 3;
  int numeroIng;

  for (var i = 0; i < dimension; i++) {
    List<int> fila = [];
    for (var j = 0; j < dimension; j++) {
      print("Matriz A - Ingrese el numero para la posicion $i$j:");
      numeroIng = int.parse(stdin.readLineSync()!);
      fila.add(numeroIng);
    }
    matrizA.add(fila);
  }

  for (var i = 0; i < dimension; i++) {
    List<int> fila = [];
    for (var j = 0; j < dimension; j++) {
      print("Matriz B - Ingrese el numero para la posicion $i$j:");
      numeroIng = int.parse(stdin.readLineSync()!);
      fila.add(numeroIng);
    }
    matrizB.add(fila);
  }

  for (var i = 0; i < dimension; i++) {
    List<int> filaRes = [];
    for (var j = 0; j < dimension; j++) {
      int sumaProducto = 0;
      for (var k = 0; k < dimension; k++) {
        sumaProducto += matrizA[i][k] * matrizB[k][j];
      }
      filaRes.add(sumaProducto);
    }
    matrizC.add(filaRes);
  }

  print("Matriz A:");
  print(matrizA);

  print("Matriz B:");
  print(matrizB);

  print("Matriz Resultado:");
  print(matrizC);

  for (var i = 0; i < dimension; i++) {
    int sumaRenglon = 0;
    for (var j = 0; j < dimension; j++) {
      sumaRenglon += matrizC[i][j];
    }
    print("Suma del renglon ${i + 1}: $sumaRenglon");
  }

  for (var j = 0; j < dimension; j++) {
    int sumaColumna = 0;
    for (var i = 0; i < dimension; i++) {
      sumaColumna += matrizC[i][j];
    }
    print("Suma de la columna ${j + 1}: $sumaColumna");
  }
}