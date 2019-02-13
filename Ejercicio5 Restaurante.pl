%EJERCICIO 1
/*
A partir de la siguiente base de conocimiento en prolog,
crear las reglas necesarias para que el intérprete nos
diga qué alimento puede comer cada animal:
*/

herbivoro(vaca).
herbivoro(oveja).
carnivoro(leon).
hortaliza(tomate).
hortaliza(zanahoria).
fruta(manzana).
pescado(besugo).
carne(salchicha).
fideos(spaghetti).


%Creamos las reglas:
come(X,Y):- herbivoro(X), hortaliza(Y); fruta(Y).
come(X,Y):- carnivoro(X), (carne(Y); pescado(Y); herbivoro(Y);
			  (carnivoro(Y), dif(X,Y))).

%EJERCICIO 2
% Elabore un programa en prolog que defina lo siguiente:
% 1) Las algas usan medias rojas.
usaMediasRojas(algas).

%2) Todo objeto o animal o persona que usa  desodorante sabe tocar el saxo.
objeto(plato).
objeto(cigarro).
animal(leia).
animal(leonardo).
persona(pedro).
persona(elena).

tocaSax(X):- usaDesodorante(X), (animal(X); objeto(X); persona(X)).

% 4) Nada ni nadie que usa medias rojas puede tocar el saxo.
tocaSax(X):- not(usaMediasRojas(X)).

%3) Todo lo que eche humo usa desodorante.
echaHumo(X):- objeto(X); persona(X).
usaDesodorante(X):- echaHumo(X).


% 5) Todas las personas  puede usar un objeto
% 6) Si una persona usa desodorante no hara la tarea
% 7) Si usa desodorante y puede usar un objeto echa humo
% 8)Cualquier animal que corre es feliz
% 9) Los hippies son felices y pueden tocar el saxo
% 10)libre


