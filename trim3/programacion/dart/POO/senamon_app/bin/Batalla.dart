class Senamon {
  String _nombre;
  int _puntosSalud;
  int _puntosAtaque;
  double _peso;
  String _TipoSenamon;

  // CONSTRUCTOR
  Senamon(this._nombre, this._puntosSalud, this._puntosAtaque, this._peso, this._TipoSenamon);

  // METODO SET Y GET DE CADA ATRIBUTO
  void setNombre(String nom){
    _nombre = nom;
  }
  String getNombre(){
    return _nombre;
  }
  

  //METODOS REGLAS DEL NEGOCIO
  
  void aumentarSalud(int puntos){
    _puntosSalud = _puntosSalud + puntos;
  }

  
  void aumentarAtaque(int puntos){
    _puntosAtaque = _puntosAtaque + puntos;
  }
}