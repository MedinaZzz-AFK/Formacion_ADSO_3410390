import 'dart:io';

void main(List<String> args) {
  //solicitar datos al usuario para llenar el vector
  // -->  Ingresar 10 numeros a un vector de enteros

  List<int> numeros = []; //Declaracion vector enteros
  int num;
  // llenar todos los elementos del vector con datos del usuario
  for (var i = 0; i < 10; i++) {
    print("Ingrese el elemento #${i+1}");
    num = int.parse(stdin.readLineSync()!);
    // Agregar el numero al vector
    numeros.add(num);
  }

  print("-" * 40); //imprimir 40 caracteres

  //mostrar todos los elementos de una lista
  for (var i = 0; i < numeros.length; i++) {
    print("Elemento #${i+1}: ${numeros[i]}");
  }

  print("-" * 40);

  for (var item in numeros) {
    print("elemento: $item");
    
  }

  //Vector de multiples tipos de datos
  List<dynamic> listaDinamica= [];
  listaDinamica.add (30);
  listaDinamica.add (4.5);
  listaDinamica.add ("ADSO");
  listaDinamica.add (true);
  int edad = 22;
  listaDinamica.add(edad);
  List<bool> estados= [true, false, true, true, false];
  listaDinamica.add(estados); 
  print(listaDinamica); // [30, 4.5, "ADSO", true, 22]

  if (listaDinamica[2]== "ADSO") {
    listaDinamica [3] = true;
    
  }
  print(listaDinamica);

}