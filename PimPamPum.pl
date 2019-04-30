puntos(1). puntos(2).
puntos(3). puntos(4).

ejercicio:-
    puntos(X),
    write("X:"),write(X),nl,
    puntos(Y),
    write("Y:"),write(Y),nl,
    X\=Y,
    Suma is X+Y,
    Suma is 5.

mono(25). mono(27). mono(3). mono(12). mono(6).
mono(15). mono(9). mono(30). mono(21). mono(19).

respuesta(X,Y,Z):-
    mono(X),
    mono(Y),
    mono(Z),
    X\=Y, X\=Z, Y\=Z,
    Suma is (X+Y+Z),
    Suma is 50.

respuesta2(50).
respuesta2(Acumulador,[]):-
    Acumulador1 is mono(X)+Acumulador,



