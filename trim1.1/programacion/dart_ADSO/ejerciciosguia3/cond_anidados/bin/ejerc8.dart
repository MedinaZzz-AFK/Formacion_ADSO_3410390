/* 8. El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un
programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo
se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente
de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota
normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota
por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora.
mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo. */

import 'dart:io';

void main(List<String> args) {
  double horas, precioH, total;
  String? nombre;

  print("Hola! porfavor digita tu nombre");
  nombre = stdin.readLineSync();

  print("Okey $nombre, porfavor digita tus horas trabajadas");
  horas = double.parse(stdin.readLineSync()!);

  print(
    "Wow increibles horas trabajadas $nombre, porfavor digita cuanto te pagan por hora?",
  );
  precioH = double.parse(stdin.readLineSync()!);

  if (horas > 40 && horas <= 50) {
    total = (40 * precioH) + ((horas - 40) * precioH * 2);
    print(
      "bueno $nombre; tus horas trabajadas son $horas, y tu sueldo total sera $total, te felicito por esa gran jornada laboral, sigue asi. ;)",
    );
  } else {
    if (horas <= 40) {
      total = precioH * horas;
      print(
        "bueno $nombre; tus horas trabajadas son $horas, y tu sueldo total sera $total, te felicito por esa gran jornada laboral, sigue asi. ;)",
      );
    } else {
      if (horas > 50) {
        total =
            (40 * precioH) + (10 * precioH * 2) + ((horas - 50) * precioH * 3);
        print(
          "bueno $nombre; tus horas trabajadas son $horas, y tu sueldo total sera $total, te felicito por esa gran jornada laboral, sigue asi. ;)",
        );
      }
    }
  }
}
