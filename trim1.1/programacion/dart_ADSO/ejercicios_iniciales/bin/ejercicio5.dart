// Hacer un algoritmo que lea la base y la altura de un triángulo y muestre su
//perímetro y área
//Jeronimo Medina

import 'dart:io';

void main(List<String> args) {
  double base;
  double altura;
  double perimetro;
  double area;
  String? triangulo;
  double ladoA;
  double ladoB;

  print(
    "porfavor digite el tipo de triangulo al cual le va a sacar el perimetro y area (equilatero,isoceles,escaleno)",
  );
  triangulo = stdin.readLineSync();

  switch (triangulo) {
    case "equilatero":
      print("digita la medida de un lado");
      ladoA = double.parse(stdin.readLineSync()!);
      print("porfavor digite la base de el tiangulo");
      base = double.parse(stdin.readLineSync()!);
      print("porfavor digite la altura de el triangulo");
      altura = double.parse(stdin.readLineSync()!);
      perimetro = ladoA * 3;
      area = (base * altura) / 2;
      print("el perimetro de el triangulo es: $perimetro y su area es: $area");
      break;

    case "isoceles":
      print("digita el lado A (uno de los lados igualees)");
      ladoA = double.parse(stdin.readLineSync()!);
      print("porfavor digite la base de el tiangulo");
      base = double.parse(stdin.readLineSync()!);
      print("porfavor digite la altura de el triangulo");
      altura = double.parse(stdin.readLineSync()!);
      perimetro = (ladoA * 2) + base;
      area = (base * altura) / 2;
      print("el perimetro del triangulo es: $perimetro, y su area es: $area");

    case "escaleno":
      print("porfavor digite la base de el tiangulo");
      base = double.parse(stdin.readLineSync()!);
      print("porfavor digite la altura de el triangulo");
      altura = double.parse(stdin.readLineSync()!);
      print("digite el lado A");
      ladoA = double.parse(stdin.readLineSync()!);
      print("digite el lado B");
      ladoB = double.parse(stdin.readLineSync()!);
      perimetro = ladoA + ladoB + base;
      area = (base * altura) / 2;
      print("el perimetro de su triangulo es: $perimetro, y el area es: $area");

    default:
      print("opcion no valida");
  }
}
