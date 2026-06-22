Algoritmo ejercicio23
	//jeronimo medina-
	//23. Pedir tres números y mostrarlos ordenados de mayor a menor
	//definicion
	Definir n1, n2, n3 Como Real;
	//inicio
	Escribir "ingrese el primer numero"
	Leer n1;
	Escribir "ingrese el segundo numero"
	Leer n2;
	Escribir "ingrese el tercer numero";
	Leer n3;
	//Proceso 
	Escribir "los numeros ordenados de mayor a menor son"
	si (n1>=n2 y n1>=n3) Entonces
		si n2>=n3 Entonces
			Escribir n1, ", ", n2, ", ", n3;
		SiNo
			Escribir n1, ", ", n3, ", ", n2;
		FinSi
	FinSi
	
		si (n2>=n1 y n2>=n3) Entonces
			si n1>= n3 Entonces
				Escribir n2, ", ", n1, ", ", n3;
			SiNo
				Escribir n2, ", ", n3, ", ", n1;
			FinSi
		FinSi
		//si ninguna de las anteriores es significa que n3 es el mayor 
		si (n3>=n2 y n3>=n1) Entonces
			si n2>=n1 Entonces
				Escribir n3, ", ", n2, ", ", n1;
			SiNo
				Escribir n3, ", ", n1, ", ", n2;
			FinSi
		FinSi
	
FinAlgoritmo
