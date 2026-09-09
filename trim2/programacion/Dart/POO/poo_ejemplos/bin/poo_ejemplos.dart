import 'dart:io';

class Persona {
  // atributos = caracteristicas = estados 
  // atributos de la clase
  String nombre;
  int edad;
  String apellidos;
  double IMC;
  // IMC (indice de masa corporal)

  // constructor: es un metodo que se ejecuta cuando se crea un objeto.  Crear objeto = instanciar una clase 

  Persona(this.nombre, this.apellidos, this.edad, this.IMC); //forma acortada de hacer el constructor

  // metdo = funcion = accion = comportamiento
  //metodos de la clase
  void mostrarNombreCompleto(){
    print("${this.nombre} ${this.apellidos} ${this.edad}");
  }
  void esMayorEdad(){
    if (this.edad>= 18) {
      print("es mayor de edad");
    }else{
      print("es menor de edad");
    }
  }

  void estadoSalud(){
    print("porfavor ingrese su peso actual en kg");
    IMC = double.parse(stdin.readLineSync()!);

    if (IMC <= 18.5) {
      print("usted tiene bajo peso, tiene que comer mas.");
    }else if(IMC >= 24.9){
      print("esta en un buen peso pero deberia comer un poco mas.");
    }
  }
}

void main(List<String> args) {
  // se crea un objeto de la clase persona con los atributos nombre, apellido, edad
  var persona1 = new Persona("jero", "medina", 18);
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  var persona2 = new Persona("ana", "vallejo", 17); // se creea otro objeto de la clase persona
  print("-"*50);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();
}
