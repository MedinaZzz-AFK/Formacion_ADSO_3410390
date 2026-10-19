import 'Entrenador.dart';
import 'Senamon.dart';

class Mundosenamon {
  List<Entrenador> _listaEntrenadores;
  List<Senamon> _listaUniversoSenamon;

  // Constructor vacío
  Mundosenamon() : _listaEntrenadores = [], _listaUniversoSenamon = [] {
    print("Ejecutando el constructor MundoSenamon ...");
  }

  void crearUniversoSenamon() {
    print("Creando el universo SENAMON ...");
  }

  // Métodos set y get
  void setListaUniversoSenamon(List<Senamon> newListaSenamones) {
    _listaUniversoSenamon = newListaSenamones;
  }
  List<Senamon> getListaUniversoSenamon() {
    return _listaUniversoSenamon;
  }
  void setListaEntrenadores(List<Entrenador> newListTrainers) {
    _listaEntrenadores = newListTrainers;
  }
  List<Entrenador> getListaEntrenadores() {
    return _listaEntrenadores;
  }

  // Métodos lógica del negocio
  void ingresarEntrenadorLista(Entrenador newTrainer){
    _listaEntrenadores.add(newTrainer);
  }
  void mostrarInfoEntrenadores(){
    print("="*80);
    for (var element in _listaEntrenadores) {
      print("_"*80);
      print("Nombre: ${element.getNombre()}");
      print("Email: ${element.getEmail()}");
      print("Fecha Nacimiento: ${element.getFechaNto()}");
    }
  }
}
