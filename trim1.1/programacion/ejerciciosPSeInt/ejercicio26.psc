Algoritmo ejercicio26
	//jeronimo medina
	//26. Pedir una nota numérica entera entre 0 y 10, y mostrar dicha nota de la forma: cero, uno, dos, tres..
	//definicion
	definir nota Como real;
	
	//Proceso 
	Escribir "digite la nota porfavor del 0 al 10";
	Leer nota
	si nota<0 o nota>10 Entonces
		Escribir "la nota digitada no esta en el rango permitido";
	SiNo
		si nota=0 Entonces
			Escribir "la nota es cero";
		SiNo
			si nota=1 Entonces
				Escribir "la nota es uno";
			SiNo
				si nota=2 Entonces
					Escribir "la nota es dos";
				SiNo
					si nota=3 Entonces
						Escribir "la nota es tres";
					SiNo
						si nota=4 Entonces
							Escribir "la nota es cuatro";
						SiNo
							si nota=5 Entonces
								Escribir "la nota es cinco";
							SiNo
								si nota=6 Entonces
									Escribir " la nota es seis";
								SiNo
									si nota=7 Entonces
										Escribir "la nota es siete";
									SiNo
										si nota=8 Entonces
											Escribir "la nota es ocho";
										SiNo
											si nota=9 Entonces
												Escribir "la nota es nueve";
											SiNo
												si nota=10 Entonces
													Escribir "la nota es diez";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
