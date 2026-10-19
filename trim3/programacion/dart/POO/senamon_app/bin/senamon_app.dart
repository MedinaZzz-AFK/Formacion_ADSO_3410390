
import 'dart:io';
import 'Entrenador.dart';
import 'MundoSenamon.dart';

// Se crea un objeto de la Clase MundoSenamon
Mundosenamon miMundoSenamon = Mundosenamon();
void main(List<String> arguments) {
  miMundoSenamon.crearUniversoSenamon();
  bool salir = false;
  while (!salir) {
    print("====== BIENVENIDOS AL MUNDO SENAMON =====");
    print("1. Registrar/Consultar un Entrenador");
    print("2. Ver podio entrenadores y estadísticas");
    print("3. Entrenar un SENAMON");
    print("4. Sustituir un SENAMON");
    print("5. Iniciar Batalla");
    print("6. Gestionar mundo SENAMON");
    print("7. SALIR");
    print("____________________________________________");
    print("Ingrese una opción del menú");
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        moduloEntrenadores();
        break;
      case 2:
        moduloPodioEstadisticas();
      case 3:
        moduloEntrenarSenamon();
        break;
      case 4:
        moduloSustituirSenamon();
        break;
      case 5:
        moduloIniciarBatalla();
        break;
      case 6:
        moduloGestionarMundoSenamon();
        break;
      case 7:
        salir = true;
      default:
        print("Opción no válida");
    }
  }
}

void moduloEntrenadores() {
  print("======= Módulo de Entrenadores =========");
  print("1. Registrar Entrenador");
  print("2. Listar Entrenadores");
  print("3. Consultar entrenador");
  print("4. Modificar entrenador");
  print("5. Salir");
  print("Ingrese una opción válida");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  switch (opcion) {
    case 1:
      registrarEntrenador();
      break;
    case 2:
      listarEntrenadores();
      break;
    case 3:
      consultarEntrenador();
    default:
  }
}

void consultarEntrenador() {
  print("=" * 50);
  print("Consulltar la informacion del entrenador");
  print("ingrese el nombre del entrenador a buscar");
  String buscarNombre = stdin.readLineSync()!;
    bool encontrado = false;
  for (var element in miMundoSenamon.getListaEntrenadores()) {
    if (buscarNombre == element.getNombre()) {
      encontrado = true;
      element.mostrarEntrenador();
    }
  }
  if (!encontrado) {
    print("Entrenador no Registrado");
  }
}

void listarEntrenadores() {
  print("Lista de Entrenadores del Mundo SENAMON");
  miMundoSenamon.mostrarInfoEntrenadores();
}

void registrarEntrenador() {
  print("Ingrese el nombre del entrenador");
  String nombre = stdin.readLineSync()!;
  print("Ingrese el email del entrenador");
  String email = stdin.readLineSync()!;
  print("Ingrese fecha nacimiento del entrenador");
  DateTime fechaNto =
      DateTime.tryParse(stdin.readLineSync() ?? '') ?? DateTime.now();
  int nivelXP = 200;
  int batallasGanadas = 0;
  // Se crea una instancia de la Clase Entrenador
  Entrenador newTrainer = Entrenador(
    nombre,
    email,
    fechaNto,
    nivelXP,
    batallasGanadas,
  );
  // Se envía el nuevo entrenador a la Lista de entrenador de la clase MundoSenamon
  miMundoSenamon.ingresarEntrenadorLista(newTrainer);
}

void moduloGestionarMundoSenamon() {}

void moduloIniciarBatalla() {}

void moduloSustituirSenamon() {}

void moduloEntrenarSenamon() {}

void moduloPodioEstadisticas() {}
