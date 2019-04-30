estaEnLista(X,Lista):-
    write("Condición termino"),nl,
    Lista=[Cabeza|Cola],
    write("X: "+X),nl,
    write("Cabeza: "+Cabeza),nl,
    write("Cola: "+Cola),nl,
    X=Cabeza.
estaEnLista(X,Lista):-
    write("Condición termino"),nl,
    Lista=[Cabeza|Cola],
    write("X: "+X),nl,
    write("Cabeza: "+Cabeza),nl,
    write("Cola: "+Cola),nl,
    X\=Cabeza,
    estaEnLista(X,Cola).
