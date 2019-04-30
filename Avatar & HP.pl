airecontrol(aang).
triste(katara).
enojado(aang).
aguacontrol(katara,mujer).
aguacontrol(aang,hombre).
aguacontrol(pakku,hombre).
tierracontrol(toph).
tierracontrol(aang).
metalcontrol(toph).
espadachin(sokka).
fuegocontrol(zuko).
fuegocontrol(aang).
fuegocontrol(azula).
fuegocontrol(zhao).
fuegocontrol(ozai).
ciega(toph).
termina(guerra).

estadoavatar(X):- enojado(X), avatar(X).
bandidaciega(X):- tierracontrol(X), ciega(X).
peleadoragua(X):- aguacontrol(X,_).
peleadorfuego(X):- fuegocontrol(X).
peleadortierra(X):- (tierracontrol(X) ; metalcontrol(X)).
peleadoraire(X):- airecontrol(X).
curandera(X):- aguacontrol(X,mujer).

peleador(X):- peleadoragua(X); peleadorfuego(X); peleadortierra(X); peleadoraire(X); espadachin(X).
combate(X,Y):- peleador(X), peleador(Y), dif(X,Y).

gana(X,Y,Z,X):- combate(X,Y),
gana(X,Y,Z,X):-
avatar(X):-  airecontrol(X), aguacontrol(X,_), tierracontrol(X), fuegocontrol(X).
aborrece(X,Y):-
mata(X,Y):-
feliz(X):-





% BC Harry Potter Cortesia :Owaldo

mago(harry,valiente).
mago(harry, honesto).
mago(ron,valiente).
mago(draco,ambicioso).
mago(goyle,ambicioso).
mago(roger,estudioso).
mago(michael,estudioso).
mago(cedric,honesto).
mago(kevin,honesto).
mago(voldemort,malo).
mago(jr,malo).
bruja(hermione,valiente).
bruja(ginny,valiente).
bruja(millicent,ambicioso).
bruja(daphne,ambicioso).
bruja(luna,estudioso).
bruja(cho,estudioso).
bruja(susan,honesto).
bruja(rose,honesto).
bruja(bellatrix,malo).
bruja(narcissa,malo).



personalidad(X,Y):-
estudia(X,Y):-
mortifago(X):-
% mago, juego
juega(X,Y):-

% mago, materia
materia(X,Y):-
