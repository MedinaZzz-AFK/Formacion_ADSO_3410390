Algoritmo ejercicio29
	//jeronimo medina
	//29. Dado un monto, calcular el descuento considerando que por encima de 100 el descuento es del 10%
	//y por debajo de 100, el descuento es del 2%.
	//definicion
	Definir monto Como real;
	Definir descuento Como Real;
	Definir pagotl Como Real;
	//inicio
	Escribir "escriba de cuanto fue el monto de su compra";
	Leer monto;
	//Proceso 
	si monto>100 Entonces
		descuento <- monto * 0.10;
		pagotl <- monto - descuento;
		Escribir "el monto total de su compra con un 10% de descuento seria: ",pagotl;
	SiNo
		si monto<=100 Entonces
			descuento <- monto * 0.02;
			pagotl <- monto - descuento
			Escribir "el monto total de su compra con un 2% de descuento seria: ",pagotl;
		FinSi
	FinSi

	
FinAlgoritmo
