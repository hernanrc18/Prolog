factorial(1,1).
factorial(X,Y):-
	X > 1,
	X1 is X-1,
	factorial(X1,Y1),
	Y is X * Y1.

%factorial2(1,1).
factorial2(N,R):-
	N =< 1,
	R = N.
factorial2(N,R):-
	N2 is N-1,
        factorial2(N2,R2),
	R is R2 * N.

%TAREA: Hacer un factorial pero que sume

