--Programa que escriba en pantalla el número de caracteres 'no blancos' que tiene una frase que se le pasa como entrada teniendo en cuenta que existe una función almacenada "contarblancos" (hojavarios4)--
accept frase prompt 'Escribe una frase: '
set serveroutput on
declare
	fras	varchar2(50):='&frase';
begin
	dbms_output.put_line('La frase tiene '||(length(fras)-contarblancos(fras))||' caracteres no blancos');
end;
/