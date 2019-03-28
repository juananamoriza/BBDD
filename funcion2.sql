create or replace function contarCaracter (str varchar2, car char) return number is
	cont number(4):=0;
Begin
	for i in 1 ..length(str) loop
		if substr(str,i,1) = car then
			cont:=cont+1;
		end if;
	end loop;
	return cont;
end;
/