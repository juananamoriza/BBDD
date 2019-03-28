set serveroutput on
declare
	cursor cprovincia is
		select *
		from tprovincia
		where exists
					(select *
					from tcliente
					where provincia = codigo); -- estrictamente las provincias con clientes
	cpro	cprovincia%rowtype;
	suma_compras	tprovincia.total_compra%type;
	error_compras	exception;
begin
	open cprovincia;
	loop --recorro dichas provincias
		fetch cprovincia into cpro;
		exit when cprovincia%notfound;
		--sumo con una funcion el campo compras de los clientes de esa provincia
		select sum(compras) into suma_compras from tcliente where provincia =  cpro.codigo; 
		if suma_compras != cpro.total_compra then --si la suma no coincide
			raise error_compras; --error
		end if;
	end loop;
	close cprovincia;
exception
	when error_compras then
		dbms_output.put_line('ERROR EN EL CAMPO TOTAL_COMPRA DE '||cpro.nombre);
end;
/