%HECHOS
%------------------------------------------------------
%% ; significa or%

esUchiha(sasuke).
esUchiha(itachi).
esUchiha(shisui).
esUchiha(obito).


amigos(sasuke,naruto).
amigos(itachi,shisui).
amigos(obito,kakashi).
amigos(itachi,naruto).
amigos(kakashi,rin).
amigos(obito,rin).
amigos(naruto,kurama).

sensei(kakashi,sasuke).
sensei(kakashi,naruto).
sensei(jiraiya,naruto).

madre(kushina,naruto).
esposa(hinata,naruto).
esposa(Sakura,sasuke).


tieneContrato(naruto,sapos).
entrena(fukusaku-sama,naruto).

hermanos(sasuke,itachi).

vioMorir(sasuke,itachi).
vioMorir(itachi,shisui).
vioMorir(obito,rin).
vioMorir(kakashi,rin).

biju(shukaku).
biju(matatabi).
biju(isobu).
biju(sonGoku).
biju(kokuo).
biju(saiken).
biju(chumei).
biju(gyuki).
biju(kurama).

tieneSellado(naruto,kurama).
tieneSellado(killerBee, gyuki).
tieneSellado(roshi, sonGoku).
tieneSellado(gaara, shukaku).
tieneSellado(yugito, matatabi).
tieneSellado(minato,kurama).

pasaronSharingan(kakashi,obito).

%REGLAS
esJinchuriki(X):-tieneSellado(X,_).

tieneMangekyouSharingan(X):-esUchiha(X),vioMorir(X,Y),
	(amigos(X,Y);hermanos(X,Y)).

aprendeRasengan(X):-sensei(X,Y).

puedeUsarBijudama(X):-puedeTransformarseEnBiju(X).

puedeDespertarElRinnegan(X):-esUchiha(X),tieneMangekyouSharingan(X).

aprendeModoErmitaño(X):- tieneContrato(X,_),entrena(X,Y).

perfeccionaRasenShuriken(X):-. aprendeModoErmitaño(X),aprendeRasengan(X).

puedeTransformarseEnBiju(X):-amigos(X,Y),esJinchuriki(X),biju(X).


