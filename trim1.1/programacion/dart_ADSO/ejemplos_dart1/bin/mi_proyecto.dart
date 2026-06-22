import 'dart:io';

void main(List<String> arguments) {
  print('Hello world!'); // escribe en la consola


  //definicion de una variable tipo cadena 

String programaFormacion = "Analisis y Desarrollo de software";

// definicion de variables tipo entero

int cantAprendices = 28;

//definicion de variable tipo real

double promedioNotaGrupo = 3.7;

//definicion de logica o booleana

bool estaActivo = false; //true o false

//definicion constantes 

const PI = 3.1416;

//definicion de constante que se asigna en tiempo de ejecucion 

final fechaActual = DateTime.now();

//escribir mensaje por consola 

print(programaFormacion); //imrpime valor de la variable 
print ("hola jeje");
print ( "---------------"); //imprime texto 
print ("programa de formacion: $programaFormacion");
print("cantidad de aprendices: $cantAprendices" );
print("promedio grupos: $promedioNotaGrupo");
print("esta activo $estaActivo");
print("PI $PI y la fecha actual es: $fechaActual");

//operaciones de leer obtener datos y escribir en pantalla 

String? nombre; //variable que permite nulos
int edad;
double peso; 
stdout.writeln("bienvenid@ a nuestra App");

stdout.writeln("ingrese su nombre");
nombre = stdin.readLineSync();

stdout.writeln("ingrese su edad");
edad = int.parse(stdin.readLineSync()!);

stdout.writeln("ingrese su peso");
peso = double.parse(stdin.readLineSync()!);
stdout.write("su nombre es: $nombre, tiene $edad años y un peso de: $peso");

}