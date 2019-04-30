nombre(pamela).
nombre(diego).
nombre(fernando).
nombre(tina).

mujer(pamela).
mujer(tina).
hombre(fernando).
hombre(diego).

apellido(rodriguez).
apellido(rios).
apellido(vargas).
apellido(barrios).

comidas(ravioles).
comidas(pastel).
comidas(estofado).
comidas(ensalada).

noLleva(fernando,_,estofado).
noLleva(tina,_,ensalada).
resultado(X,Y,Z):- not(noLleva(X,Y,Z)).

combinaciones(
    nombre1, apellido1, comida1,
    nombre2, apellido2, comida2,
    nombre3, apellido3, comida3,
    nombre4, apellido4, comida4):-
	nombre(nombre1),nombre(nombre2),nombre(nombre3),nombre(nombre4),
	dif(nombre1,nombre2,nombre3,nombre4),
	apellido(apellido1),apellido(apellido2),apellido(apellido3),apellido(apellido4),
	dif(apellido1,apellido2,apellido3,apellido4),
	comidas(comida1),comidas(comida2),comidas(comida3),comidas(comida4),
	dif(comida1,comida2,comida3,comida4),
	resultado(nombre1,apellido1,comida1),
	resultado(nombre2,apellido2,comida2),
	resultado(nombre3,apellido3,comida3),
	resultado(nombre4,apellido4,comida4).


dif(X,Y,Z,W):-
	X \= Y, X \= Z, X \= W, Y \= Z, Y \=W, Z \= W.

