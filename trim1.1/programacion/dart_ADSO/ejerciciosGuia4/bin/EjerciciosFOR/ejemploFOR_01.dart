import 'dart:io';

void main(List<String> arguments) {
  for (var i = 1; i <= 5; i++) {
    //imprime los numeros del 0 al 10
    if (i != 5) {
      stdout.write("$i , ");
    } else {
      stdout.write("$i ");
    }
  }
  //imprime numero de 2 al ocho

  print("---------------------------------------");
  // Imprime los números del 2 al 8

  int numFinal = 20;
  String numeros = "";
  for (var i = 2; i <= numFinal; i++) {
    numeros += "$i ,  ";
  }
  print(numeros.substring(0, numeros.length - 1));
  print("---------------------------------------");
  for (var i = 2; i <= 20; i += 2) {
    print("Num: $i");
  }

  print("---------------------------------------");
  // Preguntar 2 números a usuario y mostrar los números de ese rango
  int? num1, num2;
  String entradaDatos;
  print("Ingrese el número 1");
  entradaDatos = stdin.readLineSync()!;
  num1 = int.tryParse(entradaDatos) ?? 0;
  print("Ingrese el número 2");
  entradaDatos = stdin.readLineSync()!;
  num2 = int.tryParse(entradaDatos) ?? 3;

  if (num1 <= num2) {
    for (var i = num1; i <= num2; i++) {
      print("  | $i |");
    }
  } else {
    print("numeros no validos debe ser el numero 1 menor que el numero 2");
  }

  //mostrar los numeros del -20 al 20
  for (var i = -20; i <= 20; i++ -1) {
    if (i != 20) {
      stdout.write("$i , ");
    } else {
      stdout.write("$i ");
    }
  }
}
