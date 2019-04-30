jugador(j1).
jugador(j2).

empieza:-
	write("Con cuantos palitos desea empezar? "),
	read(Palitos),
	write("Quien empieza? "),
	read(Quien),
	jugador(Quien),
	nim(Palitos,Quien).

%nim(palitosRecibidos, quienJuega).
nim(1,Q):-
	write(Q),
	write("  Game Over !!! \n").
nim(P,Q):-
	P < 1,
	write(Q), nl,
	write("  You WIN !!! \n").
nim(P,Q):-
	write(Q),
	write("	¿Cuantos palitos quitamos?"),
	read(Cuantos), %validar 1, 2, 3 solamente
	validar(Cuantos, Cuantos1),
	P1 is P-Cuantos1, %Los palitos que recibimos menos cuantos quitaremos
	write("Quedan "),
	write(P1), write(" palitos"), nl,
	jugador(Q1),
	Q1 \= Q, %cambiamos de jugador verificando que el siguiente jugador sea diferente
	nim(P1,Q1).

validar(C,C):-
	C > 0,
	C < 4.
validar(C,C1):-
	write(" Solo son validas 1, 2 y 3. Ingrese otro numero: "),
	read(Otro),
	validar(Otro,C1).





