fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,X):-
	N > 1,
	N1 is N - 1,
	fibonacci(N1,X1),
	write(N1),write(" "), write(X1),nl,
	N2 is N - 2,
	fibonacci(N2,X2),
	write(N2),write(" "), write(X2),nl,
	X is X1 + X2.
