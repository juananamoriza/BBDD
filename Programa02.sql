set serveroutput on
set verify off
set timing on
Accept frase prompt 'Introduce una frase '
DECLARE
	fra		varchar2(50):='&frase';
	
BEGIN
	dbms_output.put_line('El numero de espacios blancos en la frase es: '||contarBlancos(fra));
end;
/
set timing off