/* eje01. imprimir los numeros del 0-5 */

void main(List<String> args) {
  int cont = 0;

  while (cont <= 5) {
    print("contador: $cont");
    cont++;
  }

  print("------------------------------------");

  for (var i = 0; i <= 5; i++) {
    print("contador: $i");
  }
}
