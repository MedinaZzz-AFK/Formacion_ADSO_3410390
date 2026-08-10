import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizNum = [];
  int dimension;
  int numeroIng;
  bool esMagico = true;

  print("Ingrese la dimension para el cuadro magico (ejemplo 3 para un cuadro 3x3):");
  dimension = int.parse(stdin.readLineSync()!);

  print("ingrese los numeros porfavor");

  for (var i = 0; i < dimension; i++) {
    List<int> fila = [];
    for (var j = 0; j < dimension; j++) {
      print("ingrese el numero para la posicion $i$j");
      numeroIng = int.parse(stdin.readLineSync()!);
      fila.add(numeroIng);
    }
    matrizNum.add(fila);
  }

  int sumaReferencia = 0;
  for (var j = 0; j < dimension; j++) {
    sumaReferencia += matrizNum[0][j];
  }

  for (var i = 0; i < dimension; i++) {
    int sumaFila = 0;
    int sumaColumna = 0;
    for (var j = 0; j < dimension; j++) {
      sumaFila += matrizNum[i][j];
      sumaColumna += matrizNum[j][i];
    }
    if (sumaFila != sumaReferencia || sumaColumna != sumaReferencia) {
      esMagico = false;
    }
  }

  int sumaDiagonalPrincipal = 0;
  int sumaDiagonalSecundaria = 0;
  for (var i = 0; i < dimension; i++) {
    sumaDiagonalPrincipal += matrizNum[i][i];
    sumaDiagonalSecundaria += matrizNum[i][dimension - 1 - i];
  }

  if (sumaDiagonalPrincipal != sumaReferencia || sumaDiagonalSecundaria != sumaReferencia) {
    esMagico = false;
  }

  if (esMagico) {
    print("Felicidades creaste un cuadro magico");
  } else {
    print("Modifica los numeros en el cuadro para que lo hagas magico");
  }
}