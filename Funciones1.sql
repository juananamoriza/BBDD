set serveroutput on
Accept frase prompt 'Introduce una frase: '
DECLARE
	fra	varchar2(70):='&frase';
BEGIN
	dbms_output.put_line('La frase: '||fra||'. contiene '||CONTARBLANCOS(fra)||' blancos');
END;
/