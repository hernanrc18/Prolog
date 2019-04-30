imprimir([]).
imprimir([H|L]):-
	write(H),tab(1),
	imprimir(L).

/* imprimir([a,b,c,d,f,g]). */

imprimirSinCorchetes([]).
imprimirSinCorchetes([H|L]):-
	imprimir(H),nl,
	imprimirSinCorchetes(L).

/* imprimirSinCorchetes([[a,b,c],[d,e,f]]). */

imprimirEstrellas(0).
imprimirEstrellas(X):-
	Aux is X-1,
	write("*"),
	imprimirEstrellas(Aux).

imprimirEstrellas2([]).
imprimirEstrellas2([H|L]):-
	imprimirEstrellas(H),nl,
	imprimirEstrellas2(L).

/* imprimirEstrellas2([1,3,6,4]). */

