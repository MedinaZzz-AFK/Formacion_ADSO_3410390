Proceso ej5
	//jeronimo medina
	//ej.5 pedir la edad de una persoa. en caso de ser mayor de edad, pedir dos numeros y sumarlos. de lo contrario, realizar la formula x^2+6*3
	
	//definicion de variables
	
	definir edad Como Entero;
	Definir num1 Como Real;
	Definir num2 Como Real;
	definir resultado Como Real;
	//entrada
	Escribir "ingrese su edad";
	Leer edad;
	//Proceso 
	si (edad >= 18) Entonces
		Escribir "ingrese los dos numeros";
		Leer num1, num2;
		resultado <- (num1+num2);
		Escribir "la suma de los numeros es: ",resultado;
	SiNo
		Escribir "ingrese el valor de x, para la formula x^2+6*3";
		Leer num1;
		resultado <- num1^2+6*3;
		escribir "el resultado de x^2+6*3 es: ",resultado;
	FinSi
FinProceso
