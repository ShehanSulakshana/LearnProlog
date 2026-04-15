check_number_if(X):-
	(X>5 -> write('Greater than 5'),nl).


check_number_if_else(X):-
	(X>5 -> write('Greater than 5'), nl
	;
	write('Not Greater than 5'),nl
	).
