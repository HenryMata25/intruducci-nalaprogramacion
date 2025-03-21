Algoritmo Examen2
	
    Definir datos Como Cadena
    Definir op Como Cadena
    Definir u, c Como Cadena
    Definir intentos, seleccion Como Entero
    Definir saldo, cantidad Como Real
    Definir historial Como Cadena
    Definir contadorhistorial Como Entero
    Dimension datos[2] 
    Dimension op[4]   
    Dimension historial[100]  
    
    datos[0] = "Jimena"     
    datos[1] = "JiMena123"  
    saldo = 100             
    intentos = 0
    historial[0] = "Saldo inicial: 100 colones"
    contadorhistorial = 1
	
    Repetir
        Escribir "Ingrese su Usuario "
        Leer u
        Escribir "Ingrese su contrasena "
        Leer c
        
        Si u = datos[0] y c = datos[1] Entonces
            Escribir "Bienvenida ", datos[0]
        Sino
            intentos = intentos + 1
            Escribir "Datos incorrectos ", intentos, " de 3"
        FinSi
    Hasta Que u = datos[0] y c = datos[1] o intentos = 3
    
    Si intentos = 3 Entonces
        Escribir " Cuenta bloqueada "
    Sino
        op[0] = " Depositar dinero a la cuenta "
        op[1] = " sacar dinero de la cuenta "
        op[2] = " Ver saldo e historial "
        op[3] = " salir "
        
        Repetir
            Escribir " Seleccione una opcion "
            Para i = 0 Hasta 3 Hacer
                Escribir i+1, " ", op[i]
            FinPara
            
        
            Repetir
                Escribir " Ingrese el numero de la opcion "
                Leer seleccion
                
                Si seleccion >= 1 y seleccion <= 4 Entonces
                    Escribir "Opcion valida."
                Sino
                    Escribir "Error: Ingrese un numero entre 1 y 4."
                FinSi
            Hasta Que seleccion >= 1 y seleccion <= 4
            
            Segun seleccion Hacer
				
                1:Escribir "Ingrese la cantidad a depositar:"
                    Leer cantidad
                    Si cantidad > 0 Entonces
                        Si cantidad >= 3000 Entonces
                            cantidad = cantidad * 0.99  
                            Escribir "Se ha aplicado un cargo del 1% por deposito igual o superior a 3000 colones."
                        FinSi
                        saldo = saldo + cantidad
                        Escribir "Deposito exitoso. Saldo actual: ", saldo
                        historial[contadorhistorial] = "Deposito: +" + ConvertirATexto(cantidad) + " colones. Saldo: " + ConvertirATexto(saldo) + " colones."
                        contadorhistorial = contadorhistorial + 1
                    Sino
                        Escribir "Error: La cantidad debe ser un numero positivo."
                    FinSi
                2:Escribir "Ingrese la cantidad a retirar:"
                    Leer cantidad
                    Si cantidad > 0 y cantidad <= saldo Entonces
                        Si cantidad % 1000 = 0 Entonces
                            saldo = saldo - cantidad
                            Escribir "Retiro exitoso. Saldo actual: ", saldo
                            historial[contadorhistorial] = "Retiro: -" + ConvertirATexto(cantidad) + " colones. Saldo: " + ConvertirATexto(saldo) + " colones."
                            contadorhistorial = contadorhistorial + 1
                        Sino
                            Escribir "Error: Solo puede retirar cantidades de 1000 colones."
                        FinSi
                    Sino
                        Escribir "Error: Cantidad invalida o saldo insuficiente."
                    FinSi
					
                3: Escribir "Saldo actual: ", saldo, " colones"
                    Escribir "Historial de transacciones:"
                    Para i = 0 Hasta contadorhistorial - 1 Hacer
                        Escribir historial[i]
                    FinPara
                4:  Escribir "Saliendo del sistema..."
            FinSegun
        Hasta Que seleccion = 4
    FinSi
FinAlgoritmo