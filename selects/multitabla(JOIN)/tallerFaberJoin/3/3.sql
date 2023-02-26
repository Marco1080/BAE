#3.- ¿Cuál es?
#Importe total de los recambios: PrecioReferencia*Unidades
select sum(PrecioReferencia*Unidades)as Precio from incluyen
	join recambios
    on incluyen.IdRecambio = recambios.IdRecambio;
    
#Importe total de las actuaciones: Horas*50    
select sum(horas*50)as Euros from realizan;