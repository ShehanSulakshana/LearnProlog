start :-
	nl ,
	write('Hello ! what is your name ? '),
	read(Name),
	write('Nice to meet you '), write(Name), write('!') ,nl,

	write('How old are you ?'),
	read(Age),


	get_time(CurrentTime),
	stamp_date_time(CurrentTime ,DateTime , local),
	DateTime = date(Year , _, _, _, _, _, _, _, _),

	BirthYear is Year - Age ,

	write('You were probably born in '), write(BirthYear) , write('.') , nl , 
	write('GoodBye!') ,nl.