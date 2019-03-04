word(casa,  c,a,s,a).
word(amlo,  a,m,l,o).
word(palma, p,a,l,m,a).
word(aclarar,  a,c,l,a,r,a,r).
word(maluma,   m,a,l,u,m,a).
word(manos,  m,a,n,o,s).
word(uzumaki, u,z,u,m,a,k,i).
word(suma,  s,u,m,a).
word(pluton, p,l,u,t,o,n).
word(kilo, k,i,l,o).


crucigrama([V1,V2,H1,H2,H3]):-
	word(V1,X1,_, X3, _, _,X5,_),
	word(V2,_, X2,_,X4,_),
	word(H1,_, X1, _, X2),
	word(H2, _, _,X3, _,X4, _),
	word(H3,X5, _, _, _),nl.
