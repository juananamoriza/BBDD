create or replace function contarblancos(fra varchar2) return number is
	blancos	number(2):=0;
	begin
		for i in 1..length(fra) loop
			if substr(fra,i,1) = ' ' then
				blancos:=blancos+1;
			end if;
		end loop;
		return blancos;
	end;
/