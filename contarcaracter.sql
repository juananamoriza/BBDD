create or replace function contarcaracter(fra varchar2,car varchar2) return number is
	cont	number(2):=0;
	begin
		for i in 1..length(fra) loop
			if substr(fra,i,1) = car then
				cont:=cont+1;
			end if;
		end loop;
		return cont;
	end;
/