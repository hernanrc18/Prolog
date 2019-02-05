%hechos

padre(pam,bob).
padre(tom,bob).
padre(tom,liz).
padre(bob,ann).
padre(bob,pat).
padre(pat,jim).

%reglas

abuelo(X,Y):- padre(X,Z),padre(Z,Y).
hermano(X,Y):-padre(Z,X),padre(Z,Y),dif(X,Y).
tio(X,Y):-hermano(Z,X),padre(Z,Y).


