import 'dart:io';

void main(List<String> args) {
  int opcionMenu, opcion1, opcion2, opcionElegida;
  List <String> listaTemas =["Investigacion", "Historia de colombia"];
  List <String> listaNombres =[];
  print(" PORFAVOR LA OPCION DIGITADA INGRESELA EN NUMERO!! ");
  print("Porfavor digite la opcion que quiere escoger!");


  print("1. Gestion de temas");
  print("2. Gestion de estudiantes");
  print("3. Asignacion aleatoria");
  print("4. Asignar varias veces");
  print("5. Validaciones de estudiantes");
  opcionMenu = int.parse(stdin.readLineSync()!);

  print("--------------------------------------------");

  
  /* Gestion de temas */

  switch (opcionMenu) {
    case 1:
      
      print("los temas disponibles son: $listaTemas ");
      print("Si desea eliminar un tema elija la opcion 1");
      print("si desea agregar un tema elija la opcion 2");

      opcionElegida = int.parse(stdin.readLineSync()!);


      if(opcionElegida == 1){
        print("$listaTemas");
        print("----------------------------");

        /* creacion del for para posiciones */

        for (var i = 0; i < listaTemas.length; i++) {
          print("\n${listaTemas[i]}"); 
        }

        print("-"*40);
        /*Eliminar temas */
        print("¿que tema quiere eliminar?, porfavor digite el nombre del tema");
        String temaEliminar = stdin.readLineSync()!.toLowerCase();
        for (var i = 0; i < listaTemas.length; i++) {
        
          if (temaEliminar==listaTemas[i].toString().toLowerCase()) {
            listaTemas.removeAt(i);
            print("la lista actualizada quedo de esta manera: $listaTemas");
            break;
          }
        }
      } else if (opcionElegida == 2) {
        print("¿que tema quiere Agregar?, porfavor digite el nombre del tema");
        String temaAgregar = stdin.readLineSync()!.toLowerCase();

        listaTemas.add(temaAgregar);

        print("la lista actualizada con el tema agregado es: $listaTemas");
      }
      
      break;

  /* Gestión de estudiantes */
    case 2:
    /*Agregar Estudiantes */
      print("cuantos estudiantes desea agregar");
      int numeroDeEstudiantes = int.parse(stdin.readLineSync()!);
        for (var i = 0; i <numeroDeEstudiantes ; i++) {
          print("Ingrese el nombre del completo estudiante ${[i]}"); 
          String nombresEstudiantes = stdin.readLineSync()!;
          listaNombres.add(nombresEstudiantes);
        }
        print("La lista de los nombres de los estudiantes es $listaNombres");
        print("*"*40);
        print("Desea eliminar algún estudiante?");
        print("1.Sí  2.No");
        int opcionSiNo = int.parse(stdin.readLineSync()!);
        if(opcionSiNo == 1){
          print("Lista de estudiantes $listaNombres");

         
        }
      break;    
    default:
  }

}