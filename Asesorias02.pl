impresar(0).
impresar(X):-
    X1 is X-1,
    write("Hola Mundo"),nl,
    impresar(X1).

impresar2(X):-
    X > 0,
    X1 is X-1,
    write("Hola Mundo"), nl,
    impresar2(X1).
