/*PROLOG CODE TO FIND OUT GREATEST NUMBER
-GESHWAR KUMAR
-20/02/2017*/

domains
	Num1,Num2 = integer
predicates
	%nondeterm run
	nondeterm max(integer,integer,integer)
clauses
	/*run:-
		write("Enter first number:"),readint(Num1),
		nl,		
		write("Enter second number:"),readint(Num2),
		nl,
		write("1st number is greatest."),
		nl.
	run:-
		write("2st number is greatest."),
		nl.	*/			
	max(Num1,Num2,Num1):-
			Num1 >= Num2, !.
	max(Num1,Num2,Num2):-
			Num2 >= Num1, !.		
goal
	%run.
	max(6,8,Max).