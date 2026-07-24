import 'dart:io';

void main(List<String> args) {
  /*Llenar dos vectores A y B de 8 elementos cada uno. Crear un tercer vector C de 16 elementos que intercale los 
valores de A y B (es decir: el primer elemento de $A$, luego el primero de B, el segundo de A, el segundo de B, 
y así sucesivamente). 

Imprimir el vector C resultante.*/

List<double> vectorA= [];
List<double> vectorB= [];
List<double> vectorC= [];
double numA, numB;

for (var i = 0; i < 8; i++) {
  print("porfavor digite el numero #${i+1} de A:");
  numA = double.parse(stdin.readLineSync()!);
  vectorA.add(numA);
}

print("-" * 40);

for (var i = 0; i < 8; i++) {
  print("porfavor digite el numero #${i+1} de B:");
  numB = double.parse(stdin.readLineSync()!);
  vectorB.add(numB);
}

for (var i = 0; i < 8; i++) {
  vectorC.add(vectorA[i]);
  vectorC.add(vectorB[i]);
}

print("-"*40);
print("elementos intercalados del vector A y B");
print(vectorC);

}