import 'dart:io';

void main(List<String> args) {
  double dineroSemana = 0,
      llegadaTarde = 500,
      fugaAseo = 300,
      horaIngreso,
      multa = 0,
      multa2 = 0,
      cuotaSemanal = 1000,
      aporteCuota = 0,
      totalPoraprendiz,
      mayorDineroSemana =
          -1, // Se inicializa en -1 para comparar
      dineroAcum = 0;
  int totalAprendices,
      opcion,
      opcion2,
      aprendizDebe = 0,
      semanaMayor = 0,
      semana;

  stdout.write("porfavor digite cuanto es el total de aprendices: ");
  totalAprendices = int.parse(stdin.readLineSync()!);

  // Se corrige el ciclo para que controle las 4 semanas usando tu variable 'semana'
  for (semana = 1; semana <= 4; semana++) {
    print("\n--- se evalua la semana $semana ---");

    // Se limpia la bolsa de dinero al iniciar cada semana
    dineroSemana = 0;

    for (var i = 1; i <= totalAprendices; i++) {
      print("\nse evalua el aprendiz $i");

      // Se reinician los valores para cada aprendiz individual
      multa = 0;
      multa2 = 0;
      aporteCuota = 0;

      print(
        "porfavor digite la hora en la que ingreso, y digitela en formato ej. 7.45, 8.00 (SIN DOBLE PUNTOS y sin A.M - P.M)",
      );
      horaIngreso = double.parse(stdin.readLineSync()!);
      if (horaIngreso >= 7.16) {
        multa = llegadaTarde;
        print("debe de pagar $llegadaTarde");
      } else {
        print("perfecto, que responsable!");
      }

      print("EL APRENDIZ HIZO EL ASEO? 1. SI  2.  NO");
      opcion = int.parse(stdin.readLineSync()!);

      if (opcion == 1) {
        print("el aprendiz no debe pagar nada");
      } else {
        multa2 = fugaAseo;
      }

      print("el aprendiz pago la cuota semana? 1.SI 2.NO");
      opcion2 = int.parse(stdin.readLineSync()!);

      if (opcion2 == 1) {
        print("perfecto");
        aporteCuota = cuotaSemanal;
      } else {
        print("el aprendiz lo queda debiendo para la otra semana");
        aprendizDebe += 1;
      }

      totalPoraprendiz = multa + multa2 + aporteCuota;
      dineroSemana += totalPoraprendiz;
    } // Aquí termina el ciclo de aprendices

    // Se saca el mensaje del total de la semana afuera del ciclo de aprendices
    print("el total recogido en la semana $semana es: $dineroSemana");

    // Lógica para saber cuál semana recogió más dinero
    if (dineroSemana > mayorDineroSemana) {
      mayorDineroSemana = dineroSemana;
      semanaMayor = semana;
    }

    // Se acumula el dinero de esta semana al total general
    dineroAcum += dineroSemana;
  } // Aquí termina el ciclo de semanas

  // Impresión de resultados finales
  print("RESULTADOS FINALES");
  print("Total recogido en las 4 semanas: $dineroAcum");
  print("Total de aprendices que no aportaron cuota: $aprendizDebe");
  print("La semana que mas dinero recogio fue la semana $semanaMayor con un total de: $mayorDineroSemana");
}
