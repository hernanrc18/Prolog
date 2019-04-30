/* PROBLEMA 1: De Vacaciones (5 pts)

Seis amigos desean pasar sus vacaciones juntos y deciden viajar por parejas,

utilizando tres diferentes medios de transporte.

Sabemos que:

Alejandro no utiliza el coche ya que éste acompaña a Benito que no va en avión.

Andrés viaja en avión.

Si Carlos no va acompañado de Darío ni hace uso del avión, podrías decirnos en

qué medio de transporte llega a su destino cada pareja. */

amigos(alejandro).
amigos(benito).
amigos(andres).
amigos(carlos).
amigos(dario).
amigos(kevin).

transporte(carro).
transporte(avion).
transporte(tren).

parejas(Persona1,Persona2,Transporte1,
        Persona3,Persona4,Transporte2,
        Persona5,Persona6,Transporte3):-
    viajanJuntosEn(Persona1,Persona2,Transporte1),
    viajanJuntosEn(Persona3,Persona4,Transporte2),
    viajanJuntosEn(Persona5,Persona6,Transporte3),
    diff(Persona1,Persona2,Persona3,Persona4,Persona5,Persona6),
    diff(Transporte1,Transporte2,Transporte3),nl.

diff(A,B,C):- A\=B,A\=C,B\=C.

diff(A,B,C,D,E,F):-
    A\=B, A\=C, A\=D, A\=E, A\=F,
    B\=C, B\=D, B\=E, B\=F,
    C\=D, C\=E, C\=F,
    D\=E, D\=F,
    E\=F.

viajanJuntosEn(Persona1,Persona2,Transporte1):-

