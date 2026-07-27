/*  8. Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos. */

/* El método de ordenación por burbuja (Bubble Sort) es un algoritmo intuitivo que revisa elemento por elemento de una lista, comparándolo con el que tiene al lado (adyacente) e intercambiando sus posiciones si están en el orden incorrecto.

Se le conoce como "burbuja" porque en cada pasada los valores más grandes van "flotando" gradualmente hacia la última posición disponible al final del arreglo.

en resumen es un metodo que orgaiza todos sus valores si ven que estan en el orden incorrecto */

void bubbleSort(List<int> arreglo) {
  int n = arreglo.length;
  for (int i = 0; i < n; i++) {
    bool intercambiado = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arreglo[j] > arreglo[j + 1]) {
        int temp = arreglo[j];
        arreglo[j] = arreglo[j + 1];
        arreglo[j + 1] = temp;
        intercambiado = true;
      }
    }
    if (!intercambiado) break;
  }
}

void main() {
  List<int> numeros = [42, 15, 88, 23, 7, 54, 91, 3, 62, 35];

  print('Arreglo original: $numeros');
  bubbleSort(numeros);
  print('Arreglo ordenado:  $numeros');
}