SELECT upper(substr(nombre,1,instr(nombre,' ',1,1)-1)) || ' ' ||
initcap(substr(nombre,instr(nombre,' ',1,2)+1, length(nombre)-instr(nombre)-instr(nombre,' ',1,2))),
decode(provincia),'HU','ES DE','z ','ES DE ZARAGOZA','NO ES DE ARAGON')FROM tcliente;