imprimirHola(0).
imprimirHola(X):-
	write("hola mundo"),
	nl,
	X2 is X - 1,
	imprimirHola(X2).
