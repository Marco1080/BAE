delimiter //
create procedure ponprecio(in model varchar (15), in preci decimal (10,2))
begin 
update cochesold set precio=preci where modelo like model;

end;
// 


call ponprecio('gti','14000');
select * from cochesold;