%hechos
%
esEstudiante(hernan).
esEstudiante(juanito).
esEstudiante(macario).

carrera(sistemas).
carrera(industrial).
carrera(gestion).
carrera(bioquimica<3).
carrera(Mecatronica).

estudia(hernan,sistemas).
estudia(juanito,industrial).
estudia(macario,gestion).


aprendeProgramacionLogica(X):- esEstudiante(X),estudia(X,Y).

