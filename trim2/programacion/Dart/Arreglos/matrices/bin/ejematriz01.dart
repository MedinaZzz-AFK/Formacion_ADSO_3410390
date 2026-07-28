void main(List<String> args) {
  List<int> vector;
  List<List<int>> matrizNum = [];

  //INICIALIZACIÓN DE MATRIZ CON VALORES
  for (var i = 0; i < 3; i++) {
    matrizNum.add([]);
    for (var j = 0; j < 5; j++) {
      matrizNum[i].add(0);
    }
  }
  print("Matriz 3*5> $matrizNum");

  matrizNum[1][2] = 4;
  //SE RECORRE LA MATRIZ PARA IMPRIMIRLA
  print("Matriz 3*5 con cambio");
  for (var element in matrizNum) {
    print(element);
  }
  matrizNum[8][4]=8;
  print("Matriz 3*5 con cambio");
  for (var element in matrizNum) {
    print(element);
  }
  //MATRIZ CON DATOS INICIALES
   List<List<int>> matrizNum2 = [
  [5,4,8,6,1],
  [7,2,10,3,9],
  [8,7,2,12,7],
   ];

  print(matrizNum2);
  matrizNum2[1][2] = 3;
  print("matriz 3x5 con cambios;");
  for (var element in matrizNum2) {
    print(element);
  } 

  print(matrizNum2[2][4]);//imprime: 7
  print(matrizNum2[0][0]);//imprime: 5
}

 