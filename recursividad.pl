main(X):- triangulo(X).

triangulo(0).
triangulo(X):-
    nl,
    imprime(X),
    A is X-1,
    triangulo(A).

imprime(0).
imprime(X):-
    write("*"),
    A is X-1,
    imprime(A).



