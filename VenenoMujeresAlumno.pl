% EJERCICIO 1:
% ====================
% Sobre l�quidos venenosos

% El Sr. Ido, el qu�mico, tiene seis frascos llenos de l�quidos
% coloreados. Hay uno de cada color: rojo, anaranjado, amarillo, verde,
% azul y violeta. El se�or Ido sabe que algunos de esos l�quidos son
% t�xicos, pero no recuerda cuales...

% Sin embargo, s� recuerda algunos datos. En cada uno de los siguientes
% pares de frascos hay uno con veneno y otro no:
%                  NO       SI
%a) los frascos violeta y azul
%                 NO     SI
%b) los frascos rojo y amarillo
%		  SI       NO
%c) los frascos azul y anaranjado


% El Sr. Ido recuerda tambi�n que en estos otros pares de frascos hay
% uno sin veneno:
%	   NO          SI
%d) el violeta y el amarillo
%	 NO           NO
%e) el rojo y el anaranjado
%	 NO	   SI
%f) el verde y el azul

% �Ah! Casi lo olvido, a�ade el Sr. Ido, el l�quido del frasco rojo no es
% venenoso.

%�Qu� frascos tienen veneno?

unoSiUnoNo(violeta, azul).
unoSiUnoNo(rojo, amarillo).
unoSiUnoNo(azul, anaranjado).

unoSin(e, violeta, amarillo).
unoSin(d, rojo, anaranjado).
unoSin(f, verde, azul).

noVeneno(rojo).
noVeneno(anaranjado).

parejaPosibleVeneno(X):- unoSin(X,Y,Z), not(noVeneno(Y)),not(noVeneno(Z)).

veneno(X):- noVeneno(Y), (unoSiUnoNo(X,Y) ; unoSiUnoNo(Y,X)).

% EJERCICIO 2:
% ======================================
% Encuentra la ocupaci�n de cada mujer:

%(a) Clara es violentamente al�rgica a las plantas.
%(b) Luisa y la florista comparten el departamento
%(c) A Mar�a y Luisa les gusta solamente la m�sica rock
%(d) La jardinera, la dise�adora de modas y N�lida no se conocen entre
% s�.
% e) una mujer no puede tener una ocupaci�n que est� relacionada con algo
% a lo que es al�rgica:
% f) cada mujer tiene un solo trabajo, y cada trabajo es ocupado por una
% sola mujer las cuatro mujeres elegidas y las cuatro ocupaciones deben
% ser diferentes entre s�.

/*	?- respuesta(X).
	X=[[clara,dise�adora],[luisa,jardinera],
	   [maria,florista],[nelida,directora_de_orquesta]]
	Yes
*/

%EJERCICIO 3:
% ==============================
%ALUMNO DESPISTADO:

% �Un alumno de ISC del ITC, debido al nerviosismo del primer d�a de
% clase, ha anotado el nombre de sus profesores (Elisa, Fernando y
% Carlos), las asignaturas que se imparten (L�gica, Programaci�n y
% Matem�ticas) y el d�a de la semana de las distintas clases (lunes,
% mi�rcoles y viernes), pero s�lo recuerda que:

% - La clase de Programaci�n, impartida por Elisa, es posterior a la de
% L�gica
% - A Carlos no le gusta trabajar los lunes, d�a en el que no se imparte
% L�gica

% Ay�dale a relacionar cada profesor con su asignatura, as� como el d�a
% de la semana que se imparte(Sabemos que cada profesor imparte una
% �nica asignatu%ra y que las clases se dan en d�as diferentes)�

%	Analicemos el problema mentalmente:


