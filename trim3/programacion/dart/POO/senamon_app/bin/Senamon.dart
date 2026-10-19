class Senamon {
  String _nombre;
  int _puntosSalud;
  int _puntosAtaque;
  double _peso;
  String _tipoSenamon;
  // Constructor
  Senamon(this._nombre, this._puntosSalud, this._puntosAtaque, this._peso, this._tipoSenamon);

  // Métodos SET y GET de cada atributo
  void setNombre(String nom){
    _nombre = nom;
  }
  String getNombre(){
    return _nombre;
  }
  // Métodos Reglas del Negocio
  void aumentarSalud(int puntos){
    _puntosSalud = _puntosSalud + puntos;
  }
  void aumentarAtaque(int puntos){
    _puntosAtaque += puntos;
  }

  void mostrarInfoSenamon(){
    print("-"*50);
    print("nombre: $_nombre");
    print("puntos de ataque: $_puntosAtaque");
    print("puntos de salud: $_puntosSalud");
    print("peso de Senamon: $_peso");
    print("tipo: $_tipoSenamon");
  }

}