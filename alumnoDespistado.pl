/*EJERCICIO 3:
==============================
ALUMNO DESPISTADO:

�Un alumno de ISC del ITC, debido al nerviosismo del primer d�a de clase,
ha anotado el nombre de sus profesores (Elisa, Fernando y Carlos), las
asignaturas que se imparten (L�gica, Programaci�n y Matem�ticas) y el d�a
de la semana de las distintas clases (lunes, mi�rcoles y viernes), pero
s�lo recuerda que:

- La clase de Programaci�n, impartida por Elisa, es posterior a la de L�gica
- A Carlos no le gusta trabajar los lunes, d�a en el que no se imparte L�gica

Ay�dale a relacionar cada profesor con su asignatura, as� como el d�a de la
semana que se imparte

(Sabemos que cada profesor imparte una �nica asignatura y que las clases se dan
en d�as diferentes)�
Analicemos el problema mentalmente: */
%imparte (maestro,dia)
imparte(carlos,Dia):- dias(Dia),Dia\= lunes.
imparte(Maestro,Dia):-maestro(Maestro),dias(Dia),Maestro\=carlos.

%horario(clase,dia)
horario(programacion,viernes).
horario(logica,Dia):-dias(Dia),Dia\=lunes.
horario(matematicas,Dia):-dias(Dia).


maestro(elisa). maestro(fernando).    maestro(carlos).
materia(logica). materia(programacion). materia(matematicas).
dias(lunes). dias(miercoles). dias(viernes).

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
	daClase(Profe1,Mat1), daClase(Profe2,Mat2), daClase(Profe3,Mat3).




