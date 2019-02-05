divide(2,6).             %hecho1
divide(2,4).		 %hecho2
divide(2,12).		 %hecho3
divide(3,6).		 %hecho4
divide(3,12).            %hecho5
divide(6,X) :- divide(2,X), divide(3,X).         %regla 1


