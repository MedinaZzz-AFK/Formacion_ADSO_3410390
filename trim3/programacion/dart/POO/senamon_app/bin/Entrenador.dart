class Entrenador {
  String _nombre;
  String _email;
  DateTime _fechaNto;
  int _nivelXP;
  int _batallasGanadas;

  Entrenador (this._nombre, this._email, this._fechaNto, this._nivelXP, this._batallasGanadas);

  //Metodo set y GET

  void setNombre( String nom){
    _nombre=nom;
  }

  String getNombre(){
    return _nombre;
  }

  void setFechaNto ( DateTime fecha ){
    _fechaNto = fecha;
  }

  DateTime getFechaNto(){
    return _fechaNto;
  }

  //REGLAS DEL NEGOCIO

  bool validacionXP(){
    if (_nivelXP >= 200) {
      return true;
    }else{
      return false;
    }
  }
}