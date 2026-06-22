Proceso ejercicio19
	//JERONIMO MEDINA
	//19. Pedir dos números y decir si uno es múltiplo del otro.
	//definicion
	Definir num1 Como Real;
	Definir num2 Como Real;
	//entrada
	
	escribir " digite los dos numeros porfavor ";
	leer num1, num2;
	
	//Proceso 
	
	si ( num1 MOD num2 = 0 ) Entonces
		escribir " el numero ",num1," es multiplo de ",num2;
	SiNo
		escribir " los numeros no son multiplos ";
	FinSi
	
FinProceso
