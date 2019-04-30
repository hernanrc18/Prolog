contarElementos([],0).
contarElementos([_|L],R):-
	contarElementos(L,R1),
	R is R1+1.

%Recursividad con acumuladores
contarElementosAcumuladores([],Acc,Length):-
	Length = Acc.
contarElementosAcumuladores([_|L],OldAcc,Length):-
	NewAcc is OldAcc + 1,
	contarElementosAcumuladores(L,NewAcc,Length).

%----- contarElementosAcumuladores([1,2,3,4],0,L).

longitud(List,Length):-
	contarElementosAcumuladores(List,0,Length).
%----- longitud([1,2,3,4,5,6],X).
