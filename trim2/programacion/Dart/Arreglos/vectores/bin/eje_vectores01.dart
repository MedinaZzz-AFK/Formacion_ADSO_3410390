void main(List<String> args) {

  //Declaración/Definición de un vector
  List<int> numeros; // Declaración de un vector numérico
  List<int> numeros2 = []; // Declaración de un vector numérico

  //Declaración de un vector con valores iniciales
  List<int> edadesAprendices = [17, 16, 18, 20, 22, 19, 24];
  //Imprimir un elemento del Array (arreglo)
  print('Edad del tercer aprendiz (posicion 2)');
  print(edadesAprendices[2]);
  print('----------------------------------------');
  print('Edad del primer aprendiz (posición 0)');
  print(edadesAprendices[0]);

  //Vector de tipo String
  List<String> frutas = ['Mango', 'Pera', 'Papaya', 'Piña'];
  print('------------------------------------------');
  print(frutas[2]); //Imprime papaya
  print(frutas[3]); //Imprime piña
  frutas[1] = 'Manzana'; // Se reemplaza el elemento en la posición 1
  print(frutas); // Imprime toda la lsita (Mango, Manzana, Papaya, Piña)
  
  //Imprimir los elemetos de un vector
  for (var i = 0; i <= 3; i++) {
    print(frutas[i]); //Imprimir cada elemento del vector
  }

  print('Cantidad de frutas ${frutas.length}'); // Muestra 4
  for (var i = 0; i < frutas.length; i++) {
    print(frutas[i]); //Imprimir cada elemento del vector
  }

  //Metodos para manipular listas - Add-Remove
  List<double> estaturas = [1.70, 1.40, 1.95, 1.30]; 
  estaturas.add(1.65); //Se añade el elemento al final de la lista
  estaturas.add(1.72); //Se añade el elemento al final de la lista
  estaturas.add(1.75); //Se añade el elemento al final de la lista
  print('Cantidad de elementos del vector: ${estaturas.length}'); // Muestra 7
  estaturas.removeAt(2); // Se elimina el elemeto segun su posición dada
  print(estaturas); // [1.70, 1.40, 1.30, 1.65, 1.72, 1.75]
  estaturas.remove(1.30); // Se elimina el elemento dado
  print(estaturas); // [1.70, 1.40, 1.65, 1.72, 1.75]
  print(estaturas.elementAt(4)); // Muestra el elemento de la posición 4 (1.75)
  print(estaturas.reversed); //Imprime los elementos al contrario
  print(estaturas.last); //Muestra el último elemento (1.75)
}