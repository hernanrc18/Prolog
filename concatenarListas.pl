concatena([],L,L).
concatena([X|L1],L2,[X|L3]):-
	concatena(L1,L2,L3).

/* encontrar el mes anterior y siguiente a un mes dado
      concatena(Antes,[may|Despues],[ene,feb,mar,abr,may,jun,jul,agos,sep,
      oct,nov,dic]).

/* encontrar el predecesor y sucesor de may
 * concatena(_,[Mes1,may,Mes2|_],[ene,feb,mar,abr,may,jun,jul,agos,sep,
      oct,nov,dic]).
