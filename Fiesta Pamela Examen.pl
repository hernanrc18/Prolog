/*
 * ALUMNOS:
 * ROSALES CORVERA HERNAN
 * MENDEZ NIEBLA DIEGO
 * CAMPOS LOPEZ KEVIN
*/
nombre(pamela).
nombre(diego).
nombre(fernando).
nombre(tina).


mujer(pamela).
mujer(tina).

hombre(diego).
hombre(fernando).


apellido(rodriguez).
apellido(rios).
apellido(vargas).
apellido(barrios).

comida(ravioles).
comida(pastel).
comida(estofado).
comida(ensalada).


completo(X,barrios):- nombre(X), not(hombre(X)).
completo(tina,X):- apellido(X), X\=barrios, X\=rodriguez.
completo(fernando,X):- apellido(X), X\=rodriguez,X\=barrios.
completo(diego,X):- apellido(X), X\=barrios,X\=rios.


lleva(fernando,X):- comida(X),X\=estofado, X\=pastel.
lleva(diego,X):- comida(X), X\=estofado.
lleva(tina,X):- comida(X), X\=ensalada,X\=pastel,X\=ravioles.
lleva(X,ensalada):- nombre(X), X\=tina.
lleva(X,estofado):- completo(X,Y), X\=diego, Y\=rios.
lleva(X,ravioles):- nombre(X),not(mujer(X)), completo(X,Y), Y\=rodriguez.
lleva(X,pastel):- completo(X,Y), X\=fernando, Y = rodriguez .




combinaciones([Nombre1,Apellido1,Comida1],[Nombre2,Apellido2,Comida2],[Nombre3,Apellido3,Comida3],[Nombre4,Apellido4,Comida4]):-

    nombre(Nombre1), nombre(Nombre2), nombre(Nombre3), nombre(Nombre4),
    dif(Nombre1,Nombre2,Nombre3,Nombre4),
    apellido(Apellido1), apellido(Apellido2), apellido(Apellido3), apellido(Apellido4),
    dif(Apellido1,Apellido2,Apellido3,Apellido4),
    comida(Comida1), comida(Comida2), comida(Comida3), comida(Comida4),
    dif(Comida1,Comida2,Comida3,Comida4),
    completo(Nombre1,Apellido1),
    completo(Nombre2,Apellido2),
    completo(Nombre3,Apellido3),
    completo(Nombre4,Apellido4),
    lleva(Nombre1,Comida1),
    lleva(Nombre2,Comida2),
    lleva(Nombre3,Comida3),
    lleva(Nombre4,Comida4).

dif(X,Y,Z,W):-X \=Y, X \=Z, X \=W, Y \=Z, Y \=W, Z \=W.



/*
 % combinacionDeProfesiones da verdadero si le pasas una combinacion de 4 personas y  4 profesiones
% para las cuales cada persona puede hacer su profesion y son todas distintas entre si (las personas y las profesiones)
combinacionDeProfesiones(
% Definimos las variables relevantes a la funcion
Persona1,Profesion1,
Persona2,Profesion2,
Persona3,Profesion3,
Persona4,Profesion4
):-
  % Nos aseguramos que las 4 variables Persona1-4 ocupan tener el nombre de una persona
  persona(Persona1),persona(Persona2),persona(Persona3),persona(Persona4),
  % Las 4 personas ocupan ser distintas entre si
  dif(Persona1,Persona2,Persona3,Persona4),
  % Nos aseguramos que las 4 variables Profesion1-4 ocupan tener el nombre de una profesion
  profesion(Profesion1),profesion(Profesion2),profesion(Profesion3),profesion(Profesion4),
  % Verificamos que a cada persona le corresponde una profesion distinta
  dif(Profesion1,Profesion2,Profesion3,Profesion4),
  % Verificamos que para cada persona hay una profesion que puede trabajar
  puedeTrabajar(Persona1,Profesion1),
  puedeTrabajar(Persona2,Profesion2),
  puedeTrabajar(Persona3,Profesion3),
  puedeTrabajar(Persona4,Profesion4).
_____________________________________________

%daClase(maestro,dia)
daClase(elisa,programacion).
daClase(Maestro,Materia):- maestro(Maestro),materia(Materia),Maestro\=elisa.

diferentes(A,B,C):- A\=B, A\=C, B\=C.
respuesta([Dia1,Mat1,Profe1],[Dia2,Mat2,Profe2],[Dia3,Mat3,Profe3]):-
	maestro(Profe1),
	materia(Mat1),
	dias(Dia1),
	maestro(Profe2),
	materia(Mat2),
	dias(Dia2),
	maestro(Profe3),
	materia(Mat3),
	dias(Dia3),
	diferentes(Profe1,Profe2,Profe3),
	diferentes(Dia1,Dia2,Dia3),
	diferentes(Mat1,Mat2,Mat3),
	imparte(Profe1,Dia1),imparte(Profe2,Dia2),imparte(Profe3,Dia3),
	horario(Mat1,Dia1),horario(Mat2,Dia2),horario(Mat3,Dia3),
	daClase(Profe1,Mat1), daClase(Profe2,Mat2), daClase(Profe3,Mat3).  */
