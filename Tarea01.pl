%Tarea
%Metoo que imprima "Hola Mundo" o "Adios mundo" 10 veces alternadamente
%ejemplo:
%"Hola Mundo", "Adios Mundo", "Hola Mundo", "Adios Mundo",....

impresar(0).
impresar(X):-
    X1 is X-1,
    X2 is X mod 2,
    X2 = 0,
    write("Hola mundo"),nl,
    impresar(X1).
impresar(X):-
    X1 is X-1,
    X2 is X mod 2,
    X2 = 1,
    write("Adios mundo"),nl,
    impresar(X1).

