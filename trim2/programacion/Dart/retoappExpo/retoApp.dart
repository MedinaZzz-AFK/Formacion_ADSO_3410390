import 'dart:io';

void main(List<String> args) {
  int opcionMenu = 0;
  int opcionElegida, numeroDeEstudiantes, opcionSiNo;
  List<String> listaTemas = [];
  List<String> listaNombres = [];
  List<Map<String, dynamic>> gruposAsignados = [];

  do {
    print(" PORFAVOR LA OPCION DIGITADA INGRESELA EN NUMERO!! ");
    print("Porfavor digite la opcion que quiere escoger!");
    print("1. Gestion de temas");
    print("2. Gestion de estudiantes");
    print("3. Asignacion manual");
    print("4. Asignacion aleatoria");
    print("5. Validaciones de estudiantes");
    print("6. Terminar operacion y mostrar resultados");
    
    opcionMenu = int.parse(stdin.readLineSync()!);
    print("--------------------------------------------");

    switch (opcionMenu) {
      case 1:
        print("los temas disponibles son: $listaTemas ");
        print("Si desea eliminar un tema elija la opcion 1");
        print("si desea agregar un tema elija la opcion 2");
        print("si desea volver al menu elija la opcion 3");

        opcionElegida = int.parse(stdin.readLineSync()!);

        if (opcionElegida == 1) {
          if (listaTemas.isEmpty) {
            print("No hay temas registrados para eliminar.");
          } else {
            print("$listaTemas");
            print("----------------------------");

            for (var i = 0; i < listaTemas.length; i++) {
              print("\n${listaTemas[i]}"); 
            }

            print("-" * 40);
            print("¿que tema quiere eliminar?, porfavor digite el nombre del tema");
            String temaEliminar = stdin.readLineSync()!.toLowerCase();
            
            for (var i = 0; i < listaTemas.length; i++) {
              if (temaEliminar == listaTemas[i].toString().toLowerCase()) {
                listaTemas.removeAt(i);
                print("la lista actualizada quedo de esta manera: $listaTemas");
                break;
              }
            }
          }
        } else if (opcionElegida == 2) {
          print("¿que tema quiere Agregar?, porfavor digite el nombre del tema");
          String temaAgregar = stdin.readLineSync()!;
          if (temaAgregar.trim().isNotEmpty) {
            listaTemas.add(temaAgregar.trim());
            print("la lista actualizada con el tema agregado es: $listaTemas");
          } else {
            print("El tema no puede estar vacio.");
          }
        }
        break;

      case 2:
        print("cuantos estudiantes desea agregar");
        numeroDeEstudiantes = int.parse(stdin.readLineSync()!);
        
        for (var i = 0; i < numeroDeEstudiantes; i++) {
          print("Ingrese el nombre completo del estudiante ${i + 1}"); 
          String nombresEstudiantes = stdin.readLineSync()!;
          if (nombresEstudiantes.trim().isNotEmpty) {
            listaNombres.add(nombresEstudiantes.trim());
          }
        }
        
        print("La lista de los nombres de los estudiantes es $listaNombres");
        print("*" * 40);
        print("Desea eliminar algún estudiante?");
        print("1.Sí  2.No");
        opcionSiNo = int.parse(stdin.readLineSync()!);
        
        if (opcionSiNo == 1) {
          if (listaNombres.isEmpty) {
            print("No hay estudiantes registrados para eliminar.");
          } else {
            print("Lista de estudiantes $listaNombres");
            print("¿que estudiante quiere eliminar?, digite el nombre exacto");
            String estudianteEliminar = stdin.readLineSync()!;
            for (var i = 0; i < listaNombres.length; i++) {
              if (estudianteEliminar == listaNombres[i]) {
                listaNombres.removeAt(i);
                print("La lista de estudiantes quedo: $listaNombres");
                break;
              }
            }
          }
        }
        break; 

      case 3:
        int opcionManual = 0;
        while (opcionManual != 3) {
          print("--- ASIGNACION MANUAL ---");
          print("1. Crear grupo manual");
          print("2. Eliminar grupo manual");
          print("3. Volver al menu");
          opcionManual = int.parse(stdin.readLineSync()!);

          if (opcionManual == 1) {
            if (listaTemas.isEmpty) {
              print("No hay temas registrados en el sistema. Agrega temas en la opcion 1.");
            } else if (listaNombres.isEmpty) {
              print("No hay estudiantes registrados en el sistema. Agrega estudiantes en la opcion 2.");
            } else {
              List<String> temasUsados = [];
              List<String> estudiantesUsados = [];
              
              for (var g in gruposAsignados) {
                temasUsados.add(g['tema']);
                for (var e in g['estudiantes']) {
                  estudiantesUsados.add(e);
                }
              }

              List<String> temasDisponibles = [];
              for (var t in listaTemas) {
                if (!temasUsados.contains(t)) {
                  temasDisponibles.add(t);
                }
              }

              List<String> estudiantesDisponibles = [];
              for (var e in listaNombres) {
                if (!estudiantesUsados.contains(e)) {
                  estudiantesDisponibles.add(e);
                }
              }

              if (temasDisponibles.isEmpty) {
                print("No hay temas disponibles. Todos han sido asignados.");
              } else if (estudiantesDisponibles.isEmpty) {
                print("No hay estudiantes disponibles. Todos tienen grupo.");
              } else {
                print("Temas disponibles: $temasDisponibles");
                print("Digite el nombre del tema para este grupo:");
                String temaElegido = stdin.readLineSync()!;
                
                if (!temasDisponibles.contains(temaElegido)) {
                  print("El tema ingresado no esta disponible o no existe.");
                } else {
                  List<String> estudiantesGrupo = [];
                  print("Cuantos estudiantes tendra este grupo?");
                  int cant = int.parse(stdin.readLineSync()!);
                  
                  for (var i = 0; i < cant; i++) {
                    if (estudiantesDisponibles.isEmpty) {
                      print("Ya no quedan más estudiantes disponibles.");
                      break;
                    }
                    
                    print("Estudiantes disponibles: $estudiantesDisponibles");
                    print("Digite el nombre del estudiante ${i + 1}:");
                    String est = stdin.readLineSync()!;
                    
                    if (estudiantesDisponibles.contains(est)) {
                      estudiantesGrupo.add(est);
                      estudiantesDisponibles.remove(est);
                    } else {
                      print("Estudiante no valido o ya asignado. Intente de nuevo.");
                      i--;
                    }
                  }
                  
                  gruposAsignados.add({
                    "tema": temaElegido,
                    "estudiantes": estudiantesGrupo
                  });
                  print("Grupo creado exitosamente.");
                }
              }
            }
            
          } else if (opcionManual == 2) {
            if (gruposAsignados.isEmpty) {
              print("No hay grupos creados para eliminar.");
            } else {
              print("Grupos actuales:");
              for (var i = 0; i < gruposAsignados.length; i++) {
                print("Grupo ${i}: ${gruposAsignados[i]}");
              }
              print("Digite el numero del grupo a eliminar:");
              int numG = int.parse(stdin.readLineSync()!);
              if (numG >= 0 && numG < gruposAsignados.length) {
                gruposAsignados.removeAt(numG);
                print("Grupo eliminado. Tema y estudiantes liberados.");
              } else {
                print("Numero de grupo no valido.");
              }
            }
          }
        }
        break;

      case 4:
        print("--- ASIGNACION ALEATORIA ---");
        if (listaTemas.isEmpty || listaNombres.isEmpty) {
          print("Debe haber al menos un tema y estudiantes registrados para la asignacion aleatoria.");
        } else {
          print("Cuantos estudiantes por grupo desea?");
          int cantPorGrupo = int.parse(stdin.readLineSync()!);
          
          List<String> listaMezclada = listaNombres.toList();
          listaMezclada.shuffle();
          
          List<Map<String, dynamic>> gruposAleatorios = [];
          int indiceTema = 0;
          
          for (var i = 0; i < listaMezclada.length; i += cantPorGrupo) {
            int fin = i + cantPorGrupo;
            if (fin > listaMezclada.length) {
              fin = listaMezclada.length;
            }
            List<String> sublista = listaMezclada.sublist(i, fin);
            String temaAsig = listaTemas[indiceTema % listaTemas.length];
            
            gruposAleatorios.add({
              "tema": temaAsig,
              "estudiantes": sublista
            });
            indiceTema++;
          }
          
          print("Asi quedarian los grupos:");
          for (var i = 0; i < gruposAleatorios.length; i++) {
            print("Grupo ${i}: ${gruposAleatorios[i]}");
          }
          
          print("Desea guardar esta configuracion de grupos?");
          print("1. Si (Guardar y volver al menu)");
          print("2. No (Volver al menu sin guardar)");
          int guardarAleatorio = int.parse(stdin.readLineSync()!);
          
          if (guardarAleatorio == 1) {
            for (var g in gruposAleatorios) {
              gruposAsignados.add(g);
            }
            print("Grupos guardados exitosamente.");
          }
        }
        break;

      case 5:
        print("--- VALIDACION DE GRUPOS ---");
        if (gruposAsignados.isEmpty) {
          print("No hay grupos creados para validar.");
        } else {
          bool todoBien = true;
          for (var i = 0; i < gruposAsignados.length; i++) {
            List ests = gruposAsignados[i]["estudiantes"];
            if (ests.isEmpty) {
              print("Alerta: El grupo con el tema '${gruposAsignados[i]['tema']}' esta vacio.");
              todoBien = false;
            }
          }
          
          if (todoBien) {
            print("Validacion correcta: Ningun grupo esta vacio.");
          }
        }
        break;

      case 6:
        print("--------------------------------------------");
        print("RESULTADOS FINALES DE LOS GRUPOS:");
        if (gruposAsignados.isEmpty) {
          print("No se crearon grupos.");
        } else {
          for (var i = 0; i < gruposAsignados.length; i++) {
            print("Grupo ${i}:");
            print("Tema: ${gruposAsignados[i]['tema']}");
            print("Estudiantes: ${gruposAsignados[i]['estudiantes']}");
            print("");
          }
        }
        
        print("Si quedo agusto con su decision presione la opcion 6");
        print("Si quiere editar algo seleccione la opcion 7 para volver al menu");
        int decision = int.parse(stdin.readLineSync()!);
        if (decision == 7) {
          opcionMenu = 0;
        } else if (decision == 6) {
          print("Programa terminado.");
        }
        break;

      default:
        print("Opcion no valida");
        break;
    }

  } while (opcionMenu != 6);
}