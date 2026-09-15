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
    print("$nombre, $edad, $salario, $puesto");
  }

  double calcularBonificacion() {
  if (tipoContrato == 'Contratista') {
    return salario * 0.10;
  } else if (tipoContrato == 'Temporal') {
    return salario * 0.05;
  } else if (tipoContrato == 'Indefinido') {
    return salario * 0.15;
  } else {
    return 0.0;
  }
  }

}