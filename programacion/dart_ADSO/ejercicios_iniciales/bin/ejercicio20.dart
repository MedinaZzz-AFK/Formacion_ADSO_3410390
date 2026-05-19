//Pedir una calificación alfabética (A, B, C, D) y mostrar su equivalente numérico o
//descripción: A (Excelente), B (Bueno), C (Regular), D (Deficiente).
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  String EXCELENTE = "A";
  String BUENO = "B";
  String REGULAR = "C";
  String DEFICIENTE = "D";

  print("porfavor digite la calificacion del estudiante (A,B,C,D)");
  String? entrada = stdin.readLineSync();

  if (entrada == EXCELENTE){
    print("tu calificacion es excelente");

  }else{
    if (entrada == BUENO){
    print("tu calificacion es: Bueno");

  }else{
    if(entrada == REGULAR){
      print("tu calificacion es regular");
    }else{
      if(entrada == DEFICIENTE){
        print("tu calificacion es deficiente");
      }
    }
  }
  }





}