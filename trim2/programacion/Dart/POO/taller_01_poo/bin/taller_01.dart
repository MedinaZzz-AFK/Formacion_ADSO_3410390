import 'dart:io';
import 'clases/empleado.dart';

List<Empleado> lista_empleados = [];
void main(List<String> arguments) {
  print('Taller 01 POO!');
  menuPrincipal();
}

void menuPrincipal() {
  int opcion;
  do {
    print("=" * 80);
    print("BIENVENIDO APP GESTIÓN EMPLEADOS");
    print("1. Agregar empleados");
    print("2. Mostrar empleados");
    print("3. Calcular bonificación");
    print("4. Cambiar puesto");
    print("5. Simularpaso de año");
    print("6. Aumentar salario");
    print("7. Cambiar datos empleado");
    print("8. Salir");
    print("=" * 80);
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        agregarEmpleados();
        break;
      case 2:
        mostrarEmpleados();
        break;
      case 3:
        calcularBonificacion();
        break;
      case 4:
        cambiarPuesto();
        break;
      case 5:
        simularPasoAnio();
        break;
      case 6:
        aumentarSalario();
        break;
      case 7:
        cambiarDatosEmpleado();
        break;
      case 8:
        print("Ha seleccionado salir de la aplicación");
        break;
      default:
    } //CIERRA EL SWITCH
  } while (opcion != 8); //CIERRA MENÚ PRINCIPAL
}

void cambiarDatosEmpleado() {
  mostrarEmpleados();
  print("Que empleado desea cambiarle la  información");
  int indiceEmpleado = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Ingrese el nuevo nombre del empleado");
  String newNombre = stdin.readLineSync()!;
  print("Ingrese la edad del empleado");
  int newEdad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Ingrese el nuevo nombre del empleado");

  lista_empleados[indiceEmpleado - 1].setNombre(
    newNombre,
  ); //SE CAMBIA EL NOMNBRE DEL OBJETO
  lista_empleados[indiceEmpleado - 1].setEdad(
    newEdad,
  ); //SE CAMBIA LA EDAD DEL OBJETO
  print(
    "El nuevo nombre es: ${lista_empleados[indiceEmpleado - 1].getNombre()}",
  );
  print("La nueva edad es: ${lista_empleados[indiceEmpleado - 1].getEdad()}");
}

void aumentarSalario() {
  aumentarSalario();
  print("A que empleado deseaa aumentarle el salario");
  int indiceEmpleado = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("cuanto desea agregarle al salario del empleado");
  int newSalario = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  int indice = indiceEmpleado - 1;
  double salarioActual = lista_empleados[indice].getSalario();
  lista_empleados[indiceEmpleado].getSalario();

  print("el nuevo salario es: ${lista_empleados[indice].getSalario()}");
}

void simularPasoAnio() {
  for (var i = 0; i < lista_empleados.length; i++) {
    int Edad=lista_empleados[i].getEdad();
    int newEdad= Edad+1;

    lista_empleados[i].setEdad(newEdad);
    print("la nueva edad es: ${lista_empleados[i].getEdad()}");
  }
}

void cambiarPuesto() {
  print("A que empleado desea cambiarle el puesto");
  int indiceEmpleado = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Ingrese el nuevo cargo/puesto");
  String newPuesto = stdin.readLineSync()!;
  int indice = indiceEmpleado - 1;
  lista_empleados[indice].setPuesto(newPuesto);
  print("El nuevo puesto es: ${lista_empleados[indice].getPuesto()}");
}

void calcularBonificacion() {
  for (var i = 0; i < lista_empleados.length; i++) {
    double bonificacionEmpleado = lista_empleados[i].calcularBonificacion();
    String nombre = lista_empleados[i].getNombre();
    print("_" * 70);
    print(
      "La bonificación para el empleado: $nombre es de $bonificacionEmpleado",
    );
  }
}

void mostrarEmpleados() {
  for (var element in lista_empleados) {
    element.mostrarInformacion();
  }
}

void agregarEmpleados() {
  print("---------- AGREGAR UN NUEVO EMPLEADO -----------");
  print("Cual es el nombre de la persona");
  String nombre = stdin.readLineSync()!;
  print("Cual es la edad de la persona");
  int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Cual es el salario del empleado");
  double salario = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("Cual es el puesto del empleado");
  String puesto = stdin.readLineSync()!;
  print("Cual es el tipo de contrato del empleado");
  String tipoContrato = stdin.readLineSync()!;

  //SE CREA UN OBJETO DE LA CLASE EMPLEADO
  Empleado newEmpleado = Empleado(nombre, edad, salario, puesto, tipoContrato);
  lista_empleados.add(newEmpleado);
}
