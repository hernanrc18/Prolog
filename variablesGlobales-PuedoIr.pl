:-dynamic aqui/1.
%Dynamic siempre va al inicio del código

conectado(cocina,recibidor).
conectado(recibidor,cocina).
conectado(cocina,despensa).
conectado(despensa,cocina).
conectado(cocina,comedor).
conectado(comedor,cocina).
conectado(comedor,estar).
conectado(estar,comedor).
conectado(cocina,recamara).
conectado(recamara,cocina).

aqui(cocina).

ir(Lugar):-
	puedo_ir(Lugar),
	moverse(Lugar).

puedo_ir(Lugar):-
	aqui(X),
	conectado(X,Lugar).

moverse(Lugar):-
	retract(aqui(_)),
	asserta(aqui(Lugar)).

% retract(hecho(X)). sirve para destruir de memoria algo de la base de
% conocimiento.
%
% asserta(hecho(X)). sirve para insertar con una regla algo dentro de la
% base de conocimiento.
%
% en moverse(Lugar):- destruimos el lugar en el que estabamos e
% insertamos el nuevo lugar en el que estamos.
