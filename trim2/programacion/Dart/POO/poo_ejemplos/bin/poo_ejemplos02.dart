import 'dart:ffi';
import 'dart:io';
import 'dart:vmservice_io';

class vehiculo {
  //atributos
  String _marca;
  String _color;
  int _velocidad;
  double tamanio;

  // Constructor
  vehiculo(this._marca, this._color, this._velocidad, this.tamanio );

  // Setters y Getters

  //tipo de retorno (void = vacio que no retorna a nada)
  //setMarca = nombre Metodo
  // string newMarca= parametros
  void setMarca(String newMarca){
    _marca = newMarca; //se cambia el valor del atributo Marca
  }
  String getMarca(){
    return _marca;
  }
  /* *********************************** */
  void setColor(String newColor){
    _color = newColor;
  }
  String getColor(){
    return _color;
  }
  /* ***************************************** */
  void setVelocidad(int newVelocidad){
    if (newVelocidad < 0) {
      print("Valor de velocidad incorrecto");
    }else{
      _velocidad = newVelocidad;
    }
  }
  int getVelocidad(){
    return _velocidad;
  }
  /* ****************************************** */
  void setTamanio(double newTamanio){
    tamanio = newTamanio;
  }
  double getTamanio(){
    return tamanio;
  }
  
  //METODOS ADICIONALES
  void avanzar (){
    print("El carro avanza a una velocidad de $_velocidad");
  }
  void detenerse (){
    _velocidad = 0;
    print("el vehiculo se detuvo");
  }
  void girarIzquuierda(){
    print("el vehiculo gira a la izquierda con velocidad de $_velocidad");
  }
  void girarDerecha(){
    print("el vehiculo gira a la derecha con velocidad de $_velocidad");
  }

  void mostrarDatos(){
    print("*"*70);
    print("marca: $_marca");
    print("color: $_color");
    print("velocidad: $_velocidad");
    print("tamanio: $tamanio");
  }
}

void main(List<String> args) {
  List<vehiculo> arrayVehiculos = [];

  int cantVehiculos=0;
  print("ingrese la cantidad de vehiculos");
  cantVehiculos = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  for (var i = 0; i < cantVehiculos; i++) {
    print("_"*50);
    print("Datos para el vehiculo #${i+1}");

    print("ingrese la marca, color, velocidad y tamaño");
    String marcaTXT = stdin.readLineSync() ?? '';
    String colorTXT = stdin.readLineSync() ?? '';
    int velocidadTXT = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    double tamanioTXT = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

    //creamos un objeto de la clase vehiculo

    vehiculo carro_objeto = vehiculo(marcaTXT, colorTXT, velocidadTXT, tamanioTXT);

    //se agrega el objeto al array de vehiculos

    arrayVehiculos.add(carro_objeto);
  }

  for (var i = 0; i < arrayVehiculos.length; i++) {
    print("marca:  ${arrayVehiculos[i].getMarca()}");
    print("color: ${arrayVehiculos[i].getColor()}");
    print("velocidad: ${arrayVehiculos[i].getVelocidad()}");
    print("tamanio ${arrayVehiculos[i].getTamanio()}");
    arrayVehiculos[i].mostrarDatos();
    arrayVehiculos[i].avanzar();

  }
}
