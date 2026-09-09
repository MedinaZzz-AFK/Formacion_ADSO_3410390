// Estructura de Datos para App - Gestión aleatoria Exposiciones
import 'dart:io';
import 'dart:math';
import 'dart:vmservice_io';

List<String> temas = [];
List<int> cupos = [];
List<String> estudiantes = [];
List<String> aleatorioEstud = [];
List<List<String>> asignaciones = [];

void main(List<String> arguments) {
  menuPrincipal();
} 

void menuPrincipal() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Gestión Temas y cupos");
    print("2. Gestión Estudiantes");
    print("3. Generar exposiciones aleatorias");
    print("4. Visualizar temas y estudiantes asignados");
    print("5. Precargar datos de prueba");
    print("6. Salir");
    print("*" * 50);
    print("Digite la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        gestionTemasCupos();
        break;
      case 2:
        gestionEstudiantes();
        break;
      case 3:
        generarExposiciones();
        break;
      case 4:
        visualizarAsignaciones();
        break;
      case 5:
        precargarDatosPrueba();
        break;
      case 6:
        print("Has salido de la aplicación!");
        break;
      default:
        print("Opción incorrecta!");
    }
  } while (opcion != 6);
}

void gestionTemasCupos() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un tema");
    print("2. Listar temas");
    print("3. Editar un tema");
    print("4. Eliminar un tema");
    print("5. Salir");
    print("*" * 50);
    print("Ingrese la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearTema();
        break;
      case 2:
        listarTemas();
        break;
      case 3:
        editarTema();
        break;
      case 4:
        eliminarTema();
        break;
      case 5:
        print("Salir del menú de temas!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void gestionEstudiantes() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un Estudiante");
    print("2. Listar Estuidantes");
    print("3. Editar un Estudiante");
    print("4. Eliminar un Estudiante");
    print("5. Salir");
    print("*" * 50);
    print("Ingrese la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearEstudiante();
        break;
      case 2:
        listarEstudiante();
        break;
      case 3:
        editarEstudiante();
        break;
      case 4:
        eliminarEstudiante();
        break;
      case 5:
        print("Salir del menú de temas!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void generarExposiciones() {
  print("-----------Generando exposiciones aleatorias-------------");
  if (temas.isEmpty) {
    print("no hay temas registrados");
    return;
  }
  if (estudiantes.isEmpty) {
    print("no hay estudiantes");
    return;
  }
  int totalEstudiantes = estudiantes.length;
  int totalCupos = 0;
  for (var element in cupos ) { //se recorre el vector de cupos para saber el total
    totalCupos += element;
  }
  if (totalCupos != totalEstudiantes) {
    print("no se puede realizar la asignacion");
    int diferencia = 0;
    if (totalEstudiantes > totalCupos) {
      int diferencia = totalEstudiantes - totalCupos;
      print("faltan $diferencia cupos por asignar");
    }else{
      diferencia = totalCupos - totalEstudiantes;
      print("falta $diferencia estudiantes por crear");
    }
    return;
  }
  //se crea una copia del vector estudiantes
  aleatorioEstud = List.from(estudiantes);
  //MEZCLAR ALEATORIAMETE EL VECTOR
  aleatorioEstud.shuffle(Random());
  asignaciones = [];
  int puntero= 0;
  for (var i = 0; i < temas.length; i++) {
    int cantidad = cupos[i];
    List<String> gruposAsignado = [];
    for (var j = 0; j < cantidad; j++) {
      gruposAsignado.add(aleatorioEstud[puntero]);
      puntero++;
    }
    asignaciones.add(gruposAsignado);
    // se llama al metodo para visualizar las asignaciones
    visualizarAsignaciones();
  }

}
void visualizarAsignaciones() {
  print("--------------ASIGNACION DE EXPOSICIONES---------------");
  if (asignaciones.isEmpty) {
    print("no se han hecho asignaciones para las exposiciones");
    return;
  }

  print("*"*50);
  for (var i = 0; i < asignaciones.length; i++) {
    print("tema: ${temas[i]}");
    print("*"*50);
    print("estudiantes asignados");
    for (var j = 0; j < asignaciones[i].length ; j++) {
      print("$asignaciones[i][j]");
    }
    print("-"*50);
  }
}
void precargarDatosPrueba() {
  temas = [
    '¿Qué es la programación Orientada a Objetos? ¿Cuáles son las características principales de la POO?',
    '¿Cuál es la diferencia entre POO y programación estructurada? ¿Qué otros paradigmas hay y en qué consisten?',
    '¿Qué es un objeto? ¿Qué es una Clase? ¿Cuál es la diferencia entre Objeto y Clase?',
    '¿Qué es abstracción? Tener en cuenta: Clases Abstractas vs. Interfaces.',
    '¿Qué es encapsulamiento? Modificadores de acceso, constructores/destructores, miembros estáticos.',
    '¿Qué es herencia y un ejemplo gráfico y funcional?',
    '¿Qué es polimorfismo y un ejemplo gráfico y funcional? (Overriding vs. Overloading)',
    '¿Cuáles son los principales diagramas de UML? Relaciones entre clases en UML y código.'
  ];
  cupos = [3, 3, 3, 3, 3, 4, 4, 4]; // Total cupos = 27 estudiantes
  estudiantes = [
    'Alejandro Rua',
    'Stiven Gonzalez',
    'Miguel Angel Garcia',
    'Leider Serna',
    'Maria Jose Osorio',
    'Mateo Pescador',
    'Mateo Henao',
    'Angie Veronica Carvajal',
    'Juan Jose Bernal',
    'Juan Diego Giraldo',
    'Miguel Angel Cortes',
    'Valeria Murillo',
    'Yulieth Luna',
    'Jean Karlo Velazquez',
    'Camilo Morales',
    'Thomas Toro',
    'Johan Sebastian Zambrano',
    'Susana Castro',
    'Karol Daian Navia',
    'David Ramirez',
    'Santiago Gomez',
    'Camilo Gil',
    'Hector Alejandro Jimenez',
    'Esteban Quiceno',
    'Valeria Arenas',
    'Jeronimo Medina',
    'Juan Jose Lopez',
  ];
  asignaciones=[];
  print("datos pre-cargados con exito");
}

// Funciones para TEMAS
void crearTema() {
  String tema = "";
  int cupo = 0;
  print("Ingrese el nuevo tema");
  tema = stdin.readLineSync() ?? '';
  print("Ingrese la cantidad de personas para el nuevo tema: $tema");
  cupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  temas.add(tema); // Se añade el tema al vector de TEMAS
  cupos.add(cupo); // Se añade el cupo al vector de CUPOS
}
void listarTemas() {
  print("Listado de temas");
  if (temas.isEmpty) {
    print("no existen temas");
    return;
  }
  for (var i = 0; i < temas.length; i++) {
    print("${i+1}. ${temas[i]} - cupos: ${cupos[i]}");
  }
  print("*"*50);
}
void editarTema() {
  listarTemas();
  print("cual tema quiere editar?");
  int opcion = int.tryParse(stdin.readLineSync() ?? '' ) ?? 0;
  if (opcion == null || opcion < 1 || opcion > temas.length) {
    print("El tema a editar es invalido");
    return;
  }
  int indice = opcion - 1;
  print("digite el nuevo nombre para el tema ${temas[indice]}. solo presione ENTER si desea que continue el mismo nombre");
  String nuevoTema = stdin.readLineSync()??'';
  if (nuevoTema != null && nuevoTema.isNotEmpty) {
    temas[indice] = nuevoTema; //se reemplaza el nombre del tema
  }

  print("digite el nevo cupo del tema: ${temas[indice]}");
  int newCupo = int.tryParse(stdin.readLineSync()?? '') ?? 0;
  if (newCupo > 0) {
    cupos[indice]=newCupo;
  }
  print("el tema y el cupo fueron editados con exito");
}
void eliminarTema() {
  listarTemas();
  if (temas.isEmpty) return; //si no hay temas
  print("seleccione el tema a eliminar");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (opcion < 1 || opcion > temas.length) {
    print("tema incorrecto");
    return;
  }
  int indice = opcion - 1;
  temas.removeAt(indice); //se elimina el tema requerido
  cupos.removeAt(indice); //se elimina el cupo correspondiente
  print("el tema ah sido eliminado exitosamente");
}

//Funciones para estudiantes
void crearEstudiante(){
  String estudiante = "";
  print("ingrese el nuevo estudiante");
  estudiante = stdin.readLineSync() ?? '';
  estudiantes.add(estudiante); //se añade el estudiante al vector estudiantes
}
void listarEstudiante(){
  print("listado de estudiantes");
  if (estudiantes.isEmpty) {
    print("no exiasten estudiantes");
    return;
  }
  print("*"*50);
  for (var i = 0; i < estudiantes.length; i++) {
    print("${i+1}. ${estudiantes[i]}");
  }
  print("*"*50);
}
void editarEstudiante(){
  listarEstudiante();
  print("cual estudiante quiere editar");
  int opcion = int.tryParse(stdin.readLineSync()?? '') ?? 0;
  if (opcion == null || opcion < 1 || opcion > estudiantes.length) {
    print("el estudiante a editar es invalido");
    return;
  }

  int indice = opcion - 1;
  print("digite el nuevo nombre para el estudiante: ${estudiantes[indice]}. solo presione ENTER  si desea que continue con el mismo nombre");
  String nuevoEstudiante = stdin.readLineSync() ?? '';
  if (nuevoEstudiante!= null && nuevoEstudiante.isNotEmpty) {
    estudiantes[indice] = nuevoEstudiante; //se reemplaza el nombre del estudiante
  }
  print("el estudiante fue editado con exito");
}
void eliminarEstudiante(){
  listarTemas();
  if (estudiantes.isEmpty) return; //si no hay temas
  print("seleccione el estudiante a eliminar");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (opcion < 1 || opcion > estudiantes.length) {
    print("estudiante incorrecto");
    return;
  }
  int indice = opcion - 1;
  estudiantes.removeAt(indice); //se elimina el estudiante requerido
  print("el estudiante ah sido eliminado exitosamente");
}