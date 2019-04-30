justAte(mosquito,bloog(john)).
justAte(frog,mosquito).
justAte(stork,frog).

isDigesting(X,Y):- justAte(X,Y).
isDigesting(X,Y):- justAte(X,Z), isDigesting(Z,Y).

% -------------------------
% 1- Representar en una base de conocimiento la evolucion de bulbasaur
% 2- Definir un predicado que nos indique cual pokemon era antes y cual
% le sigue


evoluciona(huevo,bulbasaur).
evoluciona(bulbasaur,ivysaur).
evoluciona(ivysaur,venasaur).
evoluciona(venusaur,megavenasaur).

evoluciones(X,Y):- evoluciona(X,Y).
evoluciones(X,Y):- evoluciona(X,Z), evoluciones(Z,Y).

% ------------------------
% 1- Representar en una base de conocimiento la siguiente Matryoshka,
% que nos indique cual muñeca está contenida directamente en cual otra
% 2- Definir un	predicado que nos diga cual muñeca está contenida
% directa o indirectamente dentro de otra.

dentro(olga,katarina).
dentro(natasha,olga).
dentro(irina,natasha).

dentroDe(X,Y):- dentro(Y,X).
dentroDe(X,Y):- dentro(Y,Z), dentroDe(Z,X), dif(X,Y).





