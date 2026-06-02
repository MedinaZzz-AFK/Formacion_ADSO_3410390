import 'dart:io';


void main(List<String> args) {
  //imprime los numeros del 0 al 10
  print("---------------------------------");
  for (var i = 0; i <= 10; i++) {
    print("numero $i ");
  }
  //imprimir los numeros del 1-5
  print("------------------------------");
  for (var i = 1; i <= 5; i++) {
    stdout.write("$i");
    if (i < 5) {
      stdout.write(", ");
    } else {
      stdout.write(". ");
    }
  }
  //imprime los numeros del 2-8

  int numFinal = 20;
  String numeros = "";
  for (var i = 0; i < numFinal; i++) {
    numeros += "$i,";
  }
  print(numeros.substring(0, numeros.length - 1));

  //imprime los numeros pares hasta el 20
  int maximo = 20;

  for (var i = 2; i <= maximo; i += 2) {
    print("Num: $i");
  }

  //preguntar dos numeros al usuaeio y mostrar los numeros de ese rango

  int? num1, num2;
  String entradaDatos;
  print("ingrese el num1");
  entradaDatos = stdin.readLineSync()!;
  num1 = int.tryParse(entradaDatos) ?? 0;
  // num1 = int.tryParse(stdin.readLineSync()!);
  print("ingrese el num2");
  entradaDatos = stdin.readLineSync()!;
  num2 = int.tryParse(entradaDatos) ?? 3;
  if (num1 <= num2) {
    for (var i = num1; i <= num2; i++) {
      print("| $i |");
    }
  } else {
    print("rango incorrecto");
  }
  // mostrar los numeros del -20 al 20

  for (var i = -20; i <= 20; i++) {
    stdout.write("$i,");
    
    if(i < 20){
      stdout.write(", ");
    }else{
      stdout.write(". ");
    }
    
  }
}
