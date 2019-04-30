/* Eliminar elementos de una lista */
eliminarElemento(X,[H|L],L):-
	X == H.
eliminarElemento(X,[H|L],[H|Resto]):-
	X \= H,
	eliminarElemento(X,L,Resto).


/* Agregar elementos a una lista al principio */
agregarElementoInicio(X,L,[X|L]).

/* Agregar elementos a una lista al final */
agregarElementoFinal(X,[],[X|[]]).


