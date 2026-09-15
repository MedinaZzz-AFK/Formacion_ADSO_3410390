import 'dart:io';

class Persona {
  // atributos = caracteristicas = estados 
  // atributos de la clase
  String _nombre;  //atributo priv
  int _edad;  //atributo priv
  String _apellidos;  //atributo priv
  double IMC;  //atributo public
  // IMC (indice de masa corporal)

  // constructor: es un metodo que se ejecuta cuando se crea un objeto.  Crear objeto = instanciar una clase 

  Persona(this._nombre, this._apellidos, this._edad, this.IMC); //forma acortada de hacer el constructor

  // metdo = funcion = accion = comportamiento
  //metodos de la clase
  void mostrarNombreCompleto(){
    print("$_nombre $_apellidos $_edad");
  }
  void esMayorEdad(){
    if (_edad>= 18) {
      print("es mayor de edad");
    }else{
      print("es menor de edad");
    }
  }

  void estadoSalud(){
    print("su actual estado de salud es: $IMC");

    if (IMC < 18.5) {
      print("clasificacion: bajo peso");
      print("riesgo aumentado. (DESNUTRICION, debilidad osea)");
    }else if(IMC < 24.9){
      print("Clasificacion: peso normal saludable");
      print("riesgo minimo promedio");
    }else if(IMC <= 29.9){
      print("clasificacio: sobre peso");
      print("riesgo aumentado (problemas cardiometabolicos)");
    }else if(IMC <= 34.9){
      print("clasificacion: Obesidad I (Moderada)");
      print("riesgo alto!");
    }else if(IMC <= 39.9){
      print("clasificacion: Obesidad II (Severa)");
      print("Riesgo muy alto");
    }else{
      print("clasificacion: obesidad III (Morbida)");
      print("Riesgo Extremadamente alto!!!");
    }
}
}

void main(List<String> args) {
  // se crea un objeto de la clase persona con los atributos nombre, apellido, edad
  var persona1 = new Persona("jero", "medina", 20, 80);  //nombre, apellio, edad, IMC.
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  persona1.estadoSalud();
  var persona2 = new Persona("ana", "vallejo", 17, 55); // se creea otro objeto de la clase persona
  print("-"*50);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();
  persona2.estadoSalud();
  var persona3 = new Persona("saka", "mohad", 29, 100); // se creea otro objeto de la clase persona
  print("-"*50);
  persona3.mostrarNombreCompleto();
  persona3.esMayorEdad();
  persona3.estadoSalud();
}