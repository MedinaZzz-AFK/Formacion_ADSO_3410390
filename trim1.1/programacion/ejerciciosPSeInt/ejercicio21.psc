Proceso ejercicio21
	//jeronimo medina
	//21. Pedir dos números y decir cuál es el mayor o si son iguale
	definir num1 Como Real;
	definir num2 Como Real;
	
	//entrada
	Escribir " digite porfavor los dos numeros ";
	leer num1, num2;
	
	//Proceso 
	Si (num1 > num2) Entonces
		Escribir "El número ", num1, " es mayor que ", num2;
	SiNo
		Si (num1 < num2) Entonces
			Escribir "El número ", num2, " es mayor que ", num1;
		SiNo
			Escribir "Ambos números son iguales";
		FinSi
	FinSi
	
FinProceso
