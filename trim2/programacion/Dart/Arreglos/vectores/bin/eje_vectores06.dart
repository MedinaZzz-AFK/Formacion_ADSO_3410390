import 'dart:io';

void main(List<String> args) {
  /*El CPIC desea registrar la información de N aprendices. Para cada aprendiz se debe almacenar su código de matrícula, su nota final y su porcentaje de asistencia utilizando arreglos independientes (paralelos). Desarrollar una aplicación que determine e imprima:La lista de aprendices que aprobaron (nota mayor o igual a 3.0 y asistencia mayor o igual al 80%).El código y la nota del aprendiz con el promedio más alto del grupo.
  Nota: se debe declarar un arreglo de cadenas para el código, un arreglo de reales para la nota final y un arreglo de enteros/reales para el porcentaje de asistencia */

  List<int> codigoAprendices = [];
  List<double> notasFinales = [];
  List<double> porcentajeAsistencias = [];
  List<String> nombreAprendiz = [];
  List<String> aprendicesAprobados = [];
  int aprendicesRegistro;
  double promedioGrupo, sumaNotas = 0, notaAlta = 0;
  print("porfavor digite que numero de aprendices que quiere registrar");
  aprendicesRegistro = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < aprendicesRegistro; i++) {
    print("ingrese el codigo del aprendiz #${i + 1}");
    codigoAprendices.add(int.parse(stdin.readLineSync()!));
    print("ingrese porfavor el nombre del aprendiz #${i + 1}");
    nombreAprendiz.add(stdin.readLineSync()!);
    print("ingrese la nota final del aprendiz #${i + 1}");
    notasFinales.add(double.parse(stdin.readLineSync()!));
    print("ingrese el porcentaje de asistencias del aprendiz #${i + 1}");
    porcentajeAsistencias.add(double.parse(stdin.readLineSync()!));
  }

  for (var i = 0; i < aprendicesRegistro; i++) {
    if (notasFinales[i] >= 3.0 && porcentajeAsistencias[i] >= 80) {
      aprendicesAprobados.add(nombreAprendiz[i]);
    }
  }

  for (var i = 0; i < aprendicesRegistro; i++) {
    sumaNotas = sumaNotas + notasFinales[i];

    if (notasFinales[i] > notaAlta) {
      notaAlta = notasFinales[i];
    }
  }

  promedioGrupo = sumaNotas / aprendicesRegistro;

  print("Los aprendices que aprobaron la materia fueron: $aprendicesAprobados");
  print("el promedio de todo el grupo fue: $promedioGrupo");
  print("la nota final mas alta de todo el grupo fue: $notaAlta");
}
