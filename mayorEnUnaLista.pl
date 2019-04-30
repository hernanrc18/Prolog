mayorEnUnaLista([],0).
mayorEnUnaLista([H|L],R):-
	R < H,
	R1 is H,
	mayorEnUnaLista(L,R1).
mayorEnUnaLista([H|L],R):-
	R > H,
	mayorEnUnaLista(L,R).
