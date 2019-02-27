isDigesting(X,Y):- justAte(X,Y).
isDigesting(X,Y):- justAte(X,Z),isDigesting(Z,Y).

justAte(mosquito,blood(john)).
justAte(frog,mosquito).
justAte(stork,frog).



evoluciona(huevo,bulbasaur).
evoluciona(bulbasaur,ivysaur).
evoluciona(venusaur,ivysaur).


evo(X,Y):-evoluciona(X,Y).
evo(X,Y):-evoluciona(X,Z),evo(Z,Y).


absorve(olga,katarina).
absorve(natasha,olga).
absorve(irina,natasha).


dentro(X,Y):-absorve(X,Y).
dentro(X,Y):-absorve(X,Z),dentro(Z,Y).




% http://zeus.inf.ucv.cl/~rsoto/cursos/INF152/Cap4_Parte2_6ppt_INF152.pdf
