Proceso ej6
	//jeronimo medina
	//solicite el nombre de un producto y valor. luego debe adivinar un numero si selecciona el numero correcto se le aplica un descueno de el 10%, de lo contrario paga el precio normal. al final mostrar cuanto debe pagar.
	
	//definicion de variables
	Definir nombre como cadena;
	definir valorProducto Como Real;
	Definir totaldescuento Como Real;
	Definir totalcompra Como Real;
	definir numg como entero;
	
	//inicio
	Escribir " digite primero el nombre y despues el valor de el producto ";
	Leer nombre, valorProducto;
	Escribir " elija un numero de el 1 al 10 para participar por un descuento del 10% en su compra ";
	Leer numg;
	si (numg == 4) Entonces
		Escribir "usted se ah ganado un decuento de el 10%";
		totaldescuento <- valorProducto * 0.10;
		totalcompra <- valorProducto-totaldescuento;
		Escribir "este seria su total a pagar: ",totalcompra;
		
		
	SiNo
		escribir " usted no gano el descuento, suerte la proxima :)  ";
		Escribir " su total a pagar es: ", valorProducto;
		
	FinSi
	
FinProceso
