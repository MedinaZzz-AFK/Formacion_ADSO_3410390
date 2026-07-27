/*4. Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original
e imprimir el vector resultante.*/


import 'dart:io';

void main(List<String> args) {
List<double> vectorA= [];
List<double> vectorB= [];
double numA;

for (var i = 0; i < 8; i++) {
  print("porfavor digite el numero #${i+1} de A:");
  numA = double.parse(stdin.readLineSync()!);
  vectorA.add(numA);
}

print("-" * 40);


for (var i = vectorA.length - 1;i >= 0; i--) {
  vectorB.add(vectorA[i]);
}

print("el vector original es: ");
print(vectorA);
print("-"*40);
print("el vector inverso es: ");
print(vectorB);

}