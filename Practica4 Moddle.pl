 /* Agencia de viajes

 

Una agencia de viajes propone a sus clientes viajes de una semana a Roma, Londres o Túnez. El catálogo de la agencia contiene, para cada destino, el precio del transporte y el precio de una semana de estancia que varía según el destino y el nivel de comodidad elegidos: hotel, hostal o camping.

(i) Escribe el conjunto de declaraciones que describen este catálogo (los precios se dejan a tu elección).

(ii) Expresa la relación viaje(c,s,h,p) que se interpreta como: el viaje a la ciudad c durante s semanas con estancia en h cuesta p pesetas.

(iii) Completa con viaje económico(c,s,h,p,p max) que expresa que el coste p es menor que p_max.



Una agencia de viajes propone a sus clientes viajes de una o dos semanas  a  Roma,  Londres  o  Túnez.  El  catálogo  de  la  agencia  contiene,  para  cada  destino,  el  precio  del  transporte  (con  independencia  de  la  duración)  y  el  precio  de  una  semana  de  estancia  que  varía  según  el  destino  y  el  nivel  de  comodidad elegidos (hotel, hostal o camping).

A.      Escribir el conjunto de declaraciones que describen este catálogo (los precios los pones tú).

B.      Expresar la relación viaje(C, S, A, P)

C.      que se interpreta  como el viaje a la ciudad C de S semanas con estancia en A y precio P.

D.     Completar  con viaje_economico(C,  S,  A,  P,  P_max) que  restringe el precio del viaje por debajo de P_max.

 

NOTA. Utilizar los predicados auxiliares siguientes:

multiplicar(P, N, Q):- Q is P * N.

sumar(P, N, Q):-     Q is P + N.

menor(P, Q):- P < Q. */

transporte(roma,5000).
transporte(londres,5000).
transporte(tunez,1000).


estadia(roma,hotel,534).
estadia(roma,hostel,984).
estadia(roma,camping,765).
estadia(londres,hotel,677).
estadia(londres,hostel,444).
estadia(londres,camping,999).
estadia(tunez,hotel,666).
estadia(tunez,hostel,202).
estadia(tunez,camping,500).


multiplicar(P,X,Y):-
    P is X*Y.
sumar(S,X,Y):-
    S is X+Y.
menor(X,Y):-
    X<Y.


viaje(C,S,H,P):-
    transporte(C,T),
    estadia(C,H,A1),
    multiplicar(A,A1,S),
    sumar(P,T,A).


viajeEconomico(C,S,H,P,Pmax):-
    viaje(C,S,H,P),
    menor(P,Pmax).
 
 