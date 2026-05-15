Algoritmo ejercicio24
	//jeronimo medina
	//24. Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene
	Definir numero1 Como Real;
	//inicio
	Escribir "digite porfavor el numero entre 0 y 9.999"
	Leer numero1;
	//Proceso 
	si numero1<0 y numero1<9999 Entonces
		Escribir "el numero esta fuera del rango permitido";
	SiNo
		si numero1<10 Entonces
			Escribir "el numero tiene una cifra";
		SiNo
			si numero1<100 Entonces
				Escribir "el numero tiene dos cifras";
			SiNo
				si numero1<1000 Entonces
					Escribir "el numero tiene tres cifras";
				SiNo
					si numero1<10000 Entonces
						Escribir "el numero tiene cuatro cifras";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi

	
FinAlgoritmo
