Algoritmo ejercicio28
	//jeronimo medina
	//28. Un trabajador recibe su pago, según la cantidad de horas trabajadas y su valor. Si la cantidad de
	//horas trabajadas es mayor que 40, éstas se consideran horas extra, y tienen un incremento de $10000
//(diez mil) sobre el valor de la hora. Calcular y mostrar el salario (pago) del trabajador. Nota: leer horas
	//trabajadas y valor de la hora.
	//definicion
	definir pago Como Real;
	Definir horastr Como Entero;
	Definir valorhr Como Real;
	definir horasex Como entero;
	Definir pago2 Como Real;
	//inicio 
	
	Escribir "digite las horas que trabajo y el valor por hora";
	leer horastr, valorhr;
	
	//proceso 
	si horastr>40 Entonces
		pago <- (40 * valorhr) + ((horastr - 40) * 10000);
		Escribir "el pago con horas extra fue: ",pago;
	SiNo
		si horastr<=40 Entonces
			pago <- horastr * valorhr;
			Escribir "el pago sin horas extra fue: ",pago;
			
		FinSi
	FinSi
	
	
FinAlgoritmo
