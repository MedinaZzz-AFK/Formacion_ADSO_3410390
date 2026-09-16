import 'dart:ffi';
import 'dart:io';

class Empleado {
  //atributos
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  //Cnstructor
  Empleado (this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  // SETTER´S Y GETTER´S

  void aumentarSalario(double porcentaje){
    salario = salario + (salario*(porcentaje/100));
  }

  double getSalario(){
    return salario;
  }

  void cumplirAnios(){
    edad ++;
  }

  int getEdad(){
    return edad;
  }

  void cambiarPuesto(String nuevoPuesto){
    puesto = nuevoPuesto;
  }

  String getPuesto(){
    return puesto;
  }

  void mostrarInformacion(){
    print("el empleado se llama $nombre, su edad es $edad, su salario base es $salario, su puesto de trabajo es $puesto, y su bonificacion segun su tipo de contrato ( $tipoContrato ) es de: ${calcularBonificacion()} y su salario con bonificacion quedaria de: ${salario+calcularBonificacion()}");
  }

  double calcularBonificacion() {
  if (tipoContrato == 'contratista') {
    return salario * 0.10;
  } else if (tipoContrato == 'temporal') {
    return salario * 0.05;
  } else if (tipoContrato == 'indefinido') {
    return salario * 0.15;
  } else {
    return 0.0;
  }
  }


}

void main(List<String> args) {
  
  List<Empleado> listaEmpleados = [];
  int cant_empleados=0;

  print("cuantos empleados hay?");
  cant_empleados = int.tryParse(stdin.readLineSync() ?? '') ??  0;
  for (var i = 0; i < cant_empleados; i++) {
    print("ingrese los datos para el empleado #$i");
    print("-"*40);
    print("Ingrese porfavor \n 1. NOMBRE \n 2. EDAD \n 3. SALARIO \n 4. Puesto \n 5. TIPO CONTRATO (CONTRATISTA, TEMPORAL, INDEFINIDO)");
    String nombreTXT = stdin.readLineSync() ?? '';
    int edadTxt= int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    double salarioTxt= double.tryParse(stdin.readLineSync() ?? '') ?? 0;
    String puestoTxt= stdin.readLineSync() ?? '';
    String tipoContratoTxt=stdin.readLineSync() ?? ''.toLowerCase();

    //creamos objeto para la clase Empleado

    Empleado empleado_objeto = Empleado(nombreTXT, edadTxt, salarioTxt, puestoTxt, tipoContratoTxt);

    listaEmpleados.add(empleado_objeto);

  }

  for (var i = 0; i < listaEmpleados.length; i++) {
    listaEmpleados[i].mostrarInformacion();
  }
}