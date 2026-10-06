import 'dart:async';
import 'dart:io';

void main(List<String> arguments) {
  bool salir = false;
  while(!salir){
    print("=======BIENVENIDO A MUNDO SENAMON=======");
    print("1. Registrar/Consultar Entrenador");
    print("2. Ver podio Entrenadores y estadisticas");
    print("3. Entrenar a un Senamon");
    print("4. sustituir un Senamon");
    print("5. Iniciar batalla");
    print("6. Gestioar mundo Senamon");
    print("7. SALIR");
    print("-"*40);
    print("Ingrese una opcion del menu");
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        moduloEntrenadores();
        break;
      case 2:
        moduloPodioEstadisticas();
        break;
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
        salir=true;
      default:
      print("opcion no valida!");
    }
  }
}

void moduloGestionarMundoSenamon() {
  print("Modulo de Entrenadores");
  print("1. Registrar Entrenador");
  print("2. Lista Entrenadores");
  print("3. Consultar Entrenador");
  print("4. Salir");
  print("Ingrese una opcion valida");
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  switch (opcion) {
    case 1:
      registrarEntrenador();
      break;
    default:
  }
}

void registrarEntrenador() {
  print("ingrese el nombre del entrenador");
  String nombre = stdin.readLineSync()!;
  print("ingrese el email del entrenador");
  String email = stdin.readLineSync()!;
  print("ingrese la fecha de nacimiento del entrenador");
  DateTime fechaNto = DateTime.tryParse(stdin.readLineSync()?? '') ?? DateTime.now();
  
  int nivelXP = 0;
  int batallasGanadas = 0; 
}

void moduloIniciarBatalla() {
}

void moduloSustituirSenamon() {
}

void moduloEntrenarSenamon() {
}

void moduloPodioEstadisticas() {
}

void moduloEntrenadores() {
}
