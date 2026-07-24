import 'dart:io';

void main(List<String> args) {
  /* se requiere guardar 20numeros en un vector ingresados por el usuario. Se debe decir cuantos numeros pares hay y cuantos impares. Se debe mostrar el producto de los pares y el promedio de los impares*/

  List<int> numeros = [];
  int contPares=0, contImpares=0;
  int sumaImpares=0;
  double promedioImpares, productoPares=1;
  int num;
  //llenar el vector con los 20numeros del usuario
  for (var i = 0; i < 20; i++) {

    print("ingrese el numero #${i+1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
    
  }

  //procesamiento

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) { //validacion numero par
    contPares ++;
    productoPares = productoPares * numeros [i]; //producto pares
      
    }else{
      contImpares++;
      sumaImpares = sumaImpares + numeros[i]; // suma impares
    }
    
  }

  //resultado
  print("la cantidad de pares es: $contPares");
  print("la cantidad de impares es: $contPares");
  print("el producto de los pares es: $productoPares");

  if (sumaImpares > 0) {
    promedioImpares = sumaImpares / contPares;
    print("el promedio de impares es: $promedioImpares");
  }else{
    print("no se puede sacrar el promedio de impares");
  }
}