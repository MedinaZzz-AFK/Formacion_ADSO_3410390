import 'Senamon.dart';

class Entrenador {
  String _nombre;
  String _email;
  DateTime _fechaNto;
  int _nivelXP;
  int _batallasGanadas;
  List<Senamon> equipoSenamon = [];

  // Constructor
  Entrenador(this._nombre, this._email, this._fechaNto, this._nivelXP, this._batallasGanadas);

  // Métodos SET y GET
  void setNombre(String nom){
    _nombre = nom;
  }
  String getNombre(){
    return _nombre;
  }
  void setEmail(String email){
    _email = email;
  }
  String getEmail(){
    return _email;
  }
  void setFechaNto(DateTime fecha){
    _fechaNto = fecha;
  }
  DateTime getFechaNto(){
    return _fechaNto;
  }

  // Métodos - REglas del Negocio
  bool validacionXP(){
    if(_nivelXP >= 200){
      return true;
    }else{
      return false;
    }
  }

  void mostrarEntrenador(){
    print("-"*40);
    print("nombre $_nombre");
    print("email: $_email");
    print("fecha de nacimiento: $_fechaNto");
    print("Nivel de XP: $_nivelXP");
    print("Batallas ganadas: $_batallasGanadas");
    print("-"*40);
    print("SENAMONES DEL EQUIPO DE: $_nombre");
    for (var element in equipoSenamon) {
      element.mostrarInfoSenamon();
    }

  }
}