contarLista([],N,N).
contarLista([H|L],R,N):-
	R2 is R+1,
	contarLista(L,R2,N).



%otra forma de hacerlo...


longitud([],0).
longitud([H|L],R):-
	longitud(L,R2),
	R is R2+1.


