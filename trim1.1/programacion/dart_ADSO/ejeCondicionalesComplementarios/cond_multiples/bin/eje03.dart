/* 3. Una empresa de logística internacional requiere automatizar sus cotizaciones.
Solicite el peso del paquete en kilogramos y el continente de destino (1: América del
Norte, 2: Europa, 3: Asia). Cada destino tiene una tarifa diferente por kilogramo y,
adicionalmente, un impuesto aduanero fijo.
a. América del Norte: $15.000 / kg + $25.000 impuesto aduanero.
b. Europa: $25.000 / kg + $40.000 impuesto aduanero.
c. Asia: $35.000 / kg + $60.000 impuesto aduanero. Utilice un switch para
asignar estos dos valores (tarifa por kilo e impuesto) en variables. Al final del
programa, calcule el total a pagar y muéstrelo desglosado. */

import 'dart:io';

void main(List<String> args) {
  double peso;
  // Inicializamos en 0 para evitar errores de compilación de variables no asignadas
  double tarifaPorKilo = 0;
  double impuesto = 0; 
  String opcionContinente;
  String nombreContinente = "";

  print("Por favor, ingrese el peso del paquete en kg (ej. 3 o 5.7):");
  peso = double.parse(stdin.readLineSync()!);

  print("Por favor, digite el número del continente de destino:\n1: América del Norte\n2: Europa\n3: Asia");
  opcionContinente = stdin.readLineSync()!.trim();

  // El switch solo asigna los valores a las variables según la opción numérica
  switch (opcionContinente) {
    case "1":
      nombreContinente = "América del Norte";
      tarifaPorKilo = 15000;
      impuesto = 25000;
      break;
    case "2":
      nombreContinente = "Europa";
      tarifaPorKilo = 25000;
      impuesto = 40000;
      break;
    case "3":
      nombreContinente = "Asia";
      tarifaPorKilo = 35000;
      impuesto = 60000;
      break;
    default:
      print("Opción de destino no válida.");
      return; // Detiene la ejecución si la opción es incorrecta
  }

  // Realizamos los cálculos una sola vez al final del programa
  double costoPeso = tarifaPorKilo * peso;
  double total = costoPeso + impuesto;

  // Mostramos el desglose completo solicitado
  print("=== DESGLOSE DE COTIZACIÓN ===");
  print("Destino asignado: $nombreContinente");
  print("Peso del paquete: $peso kg");
  print("Costo por peso ($tarifaPorKilo por kg): $costoPeso pesos");
  print("Impuesto aduanero fijo: $impuesto pesos");
  print("TOTAL A PAGAR: $total pesos");
}
