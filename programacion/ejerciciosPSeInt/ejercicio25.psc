Algoritmo ejercicio25
	//jeronimo medina
	//25. Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 ? 2,9), Suficiente (3 ? 4,5) y Bien (4,6
	//? 5)
	//definicion
	Definir nota Como Real;
	//inicio
	Escribir "digite la nota porfavor"
	Leer nota;
	//Proceso 
	si nota<0 o nota>5 Entonces
		Escribir "la nota digitada no esta en el rango permitido";
	SiNo
		si nota<=2.9 Entonces
			Escribir " el resultado de su nota es: insuficiente";
		SiNo
			si nota<=4.5 Entonces
				Escribir "el resultado de su nota es: suficiente";
			SiNo
				si nota<=5 Entonces
					Escribir "el resultado de su nota es: bien";
				FinSi
			FinSi
		FinSi
	FinSi
	

	
FinAlgoritmo
