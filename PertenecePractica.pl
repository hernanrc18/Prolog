perros(pastor_aleman,[solovino,dino,oso]).
perros(san_bernardo,[riky,bella,majestad]).
perros(french_poodle,[paloma,piojo,livier]).

pertenece(E,L):- L = [E|_].
pertenece(E,[_|T]):- pertenece(E,T).

pastor_aleman(P):- perros(pastor_aleman,L), pertenece(P,L).
san_bernardo(P):- perros(san_bernardo,L), pertenece(P,L).
french_poodle(P):- perros(french_poodle,L), pertenece(P,L).

raza(R):- perros(_,L), pertenece(R,L).
