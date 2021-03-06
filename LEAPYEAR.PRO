/*PROLOG CODE TO CHECK WEATHER YEAR IS LEAP YEAR OR NOT
-GESHWAR KUMAR
-20/02/2017*/

domains
	X,Y = integer
predicates
	nondeterm run
	nondeterm check(integer)
clauses
	run:-
		write("Enter the year(YYYY):"),
		readint(Y),
		write("This is a LEAP YEAR."),
		nl.
	run:-
		write("This is not a LEAP YEAR."),
		nl.				
	check(Y):-
			X = Y mod 100,
			X = 0, !,
			X = Y mod 400,
			X = 0, !.
	check(Y):-
			X = Y mod 4,
			X = 0.		
goal
	run.