enCarro(newYork,hamilton).
enCarro(hamilton,francia).
enCarro(valmont,roma).
enCarro(valmont,metz).

enTren(metz,frankfurt).
enTren(roma,frankfurt).
enTren(metz,paris).
enTren(roma,paris).

enAvion(frankfurt,bangkok).
enAvion(frankfurt,singapore).
enAvion(paris,losAngeles).
enAvion(bangkok,newYork).
enAvion(singapore,newYork).
enAvion(losAngeles,newYork).

llegar(X,Y):- enCarro(X,Y); enAvion(X,Y); enTren(X,Y).

viajes(X,Y):- llegar(X,Y). %Caso base
viajes(X,Y):- llegar(X,Z), viajes(Z,Y). %Caso recursivo

viajeTransporte(X,Y,Z):-
	enCarro(X,Y), Z= enCarro;
	enTren(X,Y), Z= enTren;
	enAvion(X,Y), Z= enAvion.
