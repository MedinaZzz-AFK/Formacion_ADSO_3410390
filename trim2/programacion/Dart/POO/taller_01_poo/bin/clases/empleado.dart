class Empleado {
  String _nombre;
  int _edad;
  double _salario;
  String _puesto;
  String _tipoContrato;

   // Constructor
  Empleado(this._nombre, this._edad, this._salario, this._puesto, this._tipoContrato);

  //Método que recibe un porcentaje y devuelve el nuevo salario
  double aumentarSalario(double porcentaje){
    _salario = _salario +(_salario*(porcentaje/100));
    return _salario;
  }
  void cumplirAnios(){
    _edad ++; //Aumentar en 1 la edad
  }
  void cambiarPuesto(String nuevoPuesto){
    _puesto = nuevoPuesto;
  }
  void mostrarInformacion(){
    print("*"*50);
    print("Nombre: $_nombre");
    print("Edad $_edad");
    print("Salario base: \$$_salario");
    print("Puesto $_puesto");
    print("Tipo de contrato: $_tipoContrato");
    print("Salario con bonificación: \$${calcularBonificacion()}");
    print("*"*50);
  }
  double calcularBonificacion(){
    double aumento = 0;
    if (_tipoContrato.toUpperCase() == "contratista") {
      aumento = (_salario*10)/100;
      return _salario+aumento;
    }else if(_tipoContrato.toUpperCase() == "temporal"){
      aumento = (_salario*5)/100;
      return _salario+aumento;
    }else if(_tipoContrato.toUpperCase() == "indefinido"){
      aumento = (_salario*15)/100;
      return _salario+aumento;
    }else{
      return _salario;
    }
  }
  //GETTERs y SETTERs
  String getNombre(){
    return _nombre;
  }
  void setNombre(String newNombre){
    _nombre = newNombre;
  }
  int getEdad(){
    return _edad;
  }
  void setEdad(int newEdad){
    _edad = newEdad;
  }
  double getSalario(){
    return _salario;
  }
  void setSalario(double newSalario){
    _salario = newSalario;
  }
  String getTipoContrato(){
    return _nombre;
  }
  void setTipoContrato(String newTipoContrato){
    _tipoContrato = newTipoContrato;
  }

  String getPuesto(){
    return _puesto;
  }

  void setPuesto(String newPuesto){
    _puesto = newPuesto;
  }

}