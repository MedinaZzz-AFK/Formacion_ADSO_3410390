import 'dart:io';

void main() {
  double nota;
  double suma = 0;
  double promedio;

  print("Ingrese la calificación del alumno 1:");
  nota = double.parse(stdin.readLineSync()!);

  double menor = nota;
  suma = nota;

  for (int i = 2; i <= 40; i++) {
    print("Ingrese la calificación del alumno $i:");
    nota = double.parse(stdin.readLineSync()!);

    suma = suma + nota;

    if (nota < menor) {
      menor = nota;
    }
  }

  promedio = suma / 40;

  print("");
  print("El promedio del grupo es: $promedio");
  print("La calificación más baja es: $menor");
}