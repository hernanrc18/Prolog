imprimir2([]).
imprimir2([Cabeza|Cuerpo]):-write(Cabeza),tab(1),imprimir2(Cuerpo).


imprimir([]).
imprimir([Cabeza|Cuerpo]):-imprimir2(Cabeza),nl,imprimir(Cuerpo).


/*

escribelista2([]).
escribelista2([L|LL]):-
	escribelinea(L),nl,
	escribelista2(LL).

escribelinea([]).
escribelinea([X|L]):-
	escribe(write(X),tab(1),escribelinea(L).
*/



longitud([], L, L).
longitud([_|Aux],N,L):-
	N2 is N+1,
	longitud(Aux,N2,L).
