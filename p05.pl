% BC cortesia:
alumno(Barraza Zambada Jorge Fernando).
alumno(Salazar Aranda German Eduardo).


sayan(goku).
sayan(vegeta).
majin(buu).
namekian(pikoro).
namekian(dende).
humano(milk).
humano(bulma).
humano(krilin).
androide(lapiz).
androide(lazuli).

tiene_cola(gohan).
tiene_cola(goten).

padre(goku,gohan).
padre(goku,goten).
padre(vegeta,trunks).
madre(milk,gohan).
madre(milk,goten).
madre(bulma,trunks).

enojado(vegeta).
enojado(krilin).
enojado(buu).

hambre(buu).
hambre(goku).
hambre(vegeta).

fuerza(goku,45870).
fuerza(vegeta,44960).
fuerza(buu,42300).
fuerza(pikoro,38106).
fuerza(dende,980).
fuerza(gohan,44610).
fuerza(goten,41320).
fuerza(trunks,41943).
fuerza(milk,12791).
fuerza(bulma,566).
fuerza(lapiz,43322).
fuerza(lazuli,42311).

hibrido(X) :-padre_sayan(X),madre_humana(X).
hibrido(X) :-padre_humano(X),madre_sayan(X).
padre_humano(X) :-padre(X,_),humano(X).
madre_humana(X) :-madre(X,_),humano(X).
padre_sayan(X) :-padre(X,_),sayan(X).
madre_sayan(X) :-madre(X,_),sayan(X).
hijo(X,Y) :-padre_humano(X),madre_humana(X) ; hibrido(X).
hijo(X,Y) :-padre_sayan(X),madre_sayan(X);hibrido(X).
transforma_en_ozaru(X) :-sayan(X),tiene_cola(X).
transforma_en_ozaru(X) :-hibrido(X),tiene_cola(X).
se_cura(X) :-namekian(X).
se_cura(X) :-majin(X).
energia_infinita(X) :-androide(X).
puede_criar(X) :-hibrido(X).
puede_criar(X) :-humano(X).
puede_criar(X) :-sayan(X).
transforma_en_super_sayan(X) :-sayan(X).
transforma_en_super_sayan(X) :-hibrido(X).
come_dulces(X) :-majin(X).
come_dulces(X) :-humano(X).
come_mucho(X) :-sayan(X).
come_mucho(X) :-hibrido(X).
gana(X,Y) :-transforma_en_ozaru(X) ; transforma_en_super_sayan(X).


