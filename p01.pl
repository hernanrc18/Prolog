

esMamifero.   %hecho1
tieneRayasNegras. %hecho2
tienePezunas.  %hecho3

es_cebra :- es_ungulado, tieneRayasNegras. %regla 1
%es_ungulado:- rumia, es_mamifero.  $regla2
es_ungulado:- esMamifero, tienePezunas. %regla 3


