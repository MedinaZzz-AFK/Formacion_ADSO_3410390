//operadores logicos

//operador AND
void main(List<String> args) {
  bool tieneCarnet = true;
  int edad = 25;

  //condicion: para ingresar, ser mayor de edad y tener carnet

  if (tieneCarnet == true && edad >= 18) {
    print("bienvenido al centro de formacion");
  } else {
    print("no se cumple con los requisitos de acceso");
  }

  //operador OR
  bool esFestivo = true;
  bool esSabado = false;

  //condicion; si es sabado o es festivo no hay formacion
  if (esFestivo == true || esSabado == true) {
    print("no hay formacion");
  } else {
    print("si hay formacion");
  }

  //operador NOT
  bool sistemaCaido = true; //sistema esta caido

  if (sistemaCaido == false) {
    //se valida si el sistema no esta caido
    print("el sistema no esta caido");
  } else {
    print("el sistema esta caido");
  }

  //operadores combinados
  //aprueba si (entrego y saco mas de 3.5)
  //o tiene una excusa valida y puede presentar de nuevo el examen

  double nota = 3.4;
  bool entrego = true;
  bool excusaValida = false;

  if ((entrego == true && nota >= 3.5) || excusaValida == true) {
    if (entrego == true) {
      //si entrego el examen
      if (nota >= 3.5) {
        print("aprueba el examen");
      } else {
        print("no aprueba el examen");
      }
    } else {
      //no entrego el examen
      if (excusaValida == true) {
        print("puede presentar el examen en otra fecha");
      } else {
        print("no puede presentar el examen");
      }
    }
  } else {
    print("no aprueba ni puede presentar el examen");
  }
}
