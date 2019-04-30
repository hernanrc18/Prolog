/* EJERCICIO 1:
====================
Sobre l�quidos venenosos

El Sr. Ido, el qu�mico, tiene seis frascos llenos de l�quidos coloreados. Hay uno de cada color: rojo, anaranjado, amarillo, verde, azul y violeta. El se�or Ido sabe que algunos de esos l�quidos son t�xicos, pero no recuerda cuales...

Sin embargo, s� recuerda algunos datos. En cada uno de los siguientes
pares de frascos hay uno con veneno y otro no: */

% a) los frascos violeta y azul

% b) los frascos rojo y amarillo

% c) los frascos azul y anaranjado

% El Sr. Ido recuerda tambi�n que en estos otros pares de frascos hay uno
% sin veneno:

% d) el violeta y el amarillo

% e) el rojo y el anaranjado

% f) el verde y el azul

/* �Ah! Casi lo olvido, a�ade el Sr. Ido, el l�quido del frasco rojo no es venenoso.

�Qu� frascos tienen veneno? */

/* EJERCICIO 2:
======================================
Encuentra la ocupaci�n de cada mujer:*/
mujer(clara).
mujer(nelida).
mujer(maria).
mujer(luisa).

ocupacion(florista).
ocupacion(dise�adora).
ocupacion(jardinera).
ocupacion(directora_de_orquesta).

% (a) Clara es violentamente al�rgica a las plantas.
alergica(clara,plantas).

viveCon(luisa,florista).

% (c) A Mar�a y Luisa les gusta solamente la m�sica rock
gusta(maria,rock).
gusta(luisa,rock).

noEs(maria,directora_de_orquesta).
noEs(luisa,directora_de_orquesta).
% (b) Luisa y la florista comparten el departamento
noEs(luisa,florista).
%  (d) La jardinera, la dise�adora de modas y N�lida no se conocen entre
% s�.
noEs(nelida,dise�adora).
noEs(nelida,jardinera).
%  e) una mujer no puede tener una ocupaci�n que est� relacionada con
%  algo a lo que es al�rgica:
noEs(clara,jardinera).
noEs(clara,florista).
% f) cada mujer tiene un solo trabajo, y cada trabajo es ocupado por
% una sola mujer las cuatro mujeres elegidas y las cuatro ocupaciones
% deben ser diferentes entre s�.
diferentes(A,B,C,D):- A\=B, A\=C, A\=D, B\=C, B\=D, C\=D.

respuesta([ [Mujer1,Ocupacion1],[Mujer2,Ocupacion2],[Mujer3,Ocupacion3],[Mujer4,Ocupacion4] ]):-
	mujer(Mujer1),mujer(Mujer2),mujer(Mujer3),mujer(Mujer4),
	ocupacion(Ocupacion1),ocupacion(Ocupacion2),
	ocupacion(Ocupacion3),ocupacion(Ocupacion4),
	diferentes(Mujer1,Mujer2,Mujer3,Mujer4),
	diferentes(Ocupacion1,Ocupacion2,Ocupacion3,Ocupacion4),
	not( noEs(Mujer1,Ocupacion1) ),
	not( noEs(Mujer2,Ocupacion2) ),
	not( noEs(Mujer3,Ocupacion3) ),
	not( noEs(Mujer4,Ocupacion4) ).


/*	?- respuesta(X).
	X=[[clara,dise�adora],[luisa,jardinera],
	   [maria,florista],[nelida,directora_de_orquesta]]
	Yes
*/

/* EJERCICIO 3:
==============================
ALUMNO DESPISTADO:clase

�Un alumno de ISC del ITC, debido al nerviosismo del primer d�a de clase,
ha anotado el nombre de sus profesores (Elisa, Fernando y Carlos), las
asignaturas que se imparten (L�gica, Programaci�n y Matem�ticas) y el d�a
de la semana de las distintas clases (lunes, mi�rcoles y viernes), pero
s�lo recuerda que: */

% - La clase de Programaci�n, impartida por Elisa, es posterior a la de
% L�gica - A Carlos no le gusta trabajar los lunes, d�a en el que no se
% imparte L�gica

% Ay�dale a relacionar cada profesor con su asignatura, as� como el d�a
% de la semana que se imparte

% (Sabemos que cada profesor imparte una �nica asignatura y que las
% clases se dan en d�as diferentes)�

%	Analicemos el problema mentalmente:

maestro(elisa).     maestro(fernando).      maestro(carlos).
materia(logica).    materia(programacion).  materia(matematicas).
dia(lunes).         dia(miercoles).         dia(viernes).

%imparte(maestro,dia)
imparte(carlos,Dia):- dia(Dia), Dia \= lunes.
imparte(Maestro,Dia):- maestro(Maestro), dia(Dia), Maestro \= carlos.

%horario(materia,dia)
horario(programacion,viernes).
horario(logica,Dia):- dia(Dia), Dia \= lunes.
horario(matematicas,Dia):- dia(Dia).

%daClase(maestro,clase)
daClase(elisa,programacion).
daClase(Maestro,Materia):- maestro(Maestro), materia(Materia), Maestro \= elisa.

diferentes(A,B,C):- A\=B, A\=C, B\=C.
cargaAcademica([Maestro1,Materia1,Dia1],[Maestro2,Materia2,Dia2],[Maestro3,Materia3,Dia3]):-
	maestro(Maestro1),     maestro(Maestro2),    maestro(Maestro3),
	materia(Materia1),     materia(Materia2),    materia(Materia3),
	dia(Dia1),	       dia(Dia2),            dia(Dia3),
	diferentes(Maestro1,Maestro2,Maestro3),
	diferentes(Dia1,Dia2,Dia3),
	diferentes(Materia1,Materia2,Materia3),
	imparte(Maestro1,Dia1), imparte(Maestro2,Dia2), imparte(Maestro3,Dia3),
	horario(Materia1,Dia1), horario(Materia2,Dia2), horario(Materia3,Dia3),
	daClase(Maestro1,Materia1), daClase(Maestro2,Materia2), daClase(Maestro3,Materia3).
