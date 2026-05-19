//condicionales

//condicional simple

void main(List<String> args) {
  int edad = 18;
  if (edad >= 18) {
    print("acceso permitido");
  }

  //condicional doble
  double valorNota;
  valorNota = 3.8;
  if (valorNota < 3) {
    print("no aprueba la nota");
  } else {
    print("aprueba la nota");
  }

  //condicional anidado
  bool tieneCuenta = true;
  double saldo = 450000;
  if (tieneCuenta == true) {
    //se valida si el ususario tiene cuenta
    if (saldo >= 10000) {
      print("puede retirar dinero");
    } else {
      print("no puede retirar dinero");
    }
  } else {
    print("usted no tiene cuenta en este banco");
  }

  //condicional multiple
  String dia = "martes";
  switch (dia){
    case "lunes":
    print("todos hacen el aseo");
    break;
    case "martes":
    print("dejar el repositorio FULL en github");
    break;
    case "miercoles":
    print ("entrega de evidencias");
    break;
    case "sabado":
    case "domingo":
    print("no hay formacion");
    default:
    print("dia normal de formacion");
  }

}
