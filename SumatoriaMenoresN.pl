sumatoria(N,Resultado):-
	N =< 1,
	Resultado is 1.
sumatoria(N,Resultado):-
	N>1,
	N1 is N-1,
	sumatoria(N1,Resultado1),
	Resultado is Resultado1+N.

% 1) Multiplicar con sumas
% 2) Dividir con restas
% 3) Potencias(Base,Expo,Rsp)


multiplicar(_,0,_).
multiplicar(Base,Multiplo,Res):-
	Multiplo > 0,
	Multiplo1 is Multiplo-1,
	multiplicar(Base,Multiplo1,Res1),
	Res is Base + Res1.


