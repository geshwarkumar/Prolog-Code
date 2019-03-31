predicates
	start
	sum
	sub
	multiply
	div
	%power
clauses
	start:- sum,sub,multiply,div,nl.		
	sum:-	write("Enter Values for Addition"),nl,
		write("X = "),readreal(X),
		write("Y = "),readreal(Y),
		S = X + Y,
		write("Result = "),write(S),nl.
	sub:-	write("Enter Values for Substraction"),nl,
		write("X = "),readreal(X),
		write("Y = "),readreal(Y),
		Su = X - Y,
		write("Result = "),write(Su),nl.
	multiply:-write("Enter Values for Multiplication"),nl,
		write("X = "),readreal(X),
		write("Y = "),readreal(Y),	
		M = X * Y,
		write("Result = "),write(M),nl.
	div:-	write("Enter Values for Division"),nl,
		write("X = "),readreal(X),
		write("Y = "),readreal(Y),
		D = X / Y,
		write("Result = "),write(D),nl.
	/*power:-write("Enter Values for Power"),nl,	
		S = power(X,Y),
		write("Sum of two number is "),write(S).*/
goal
	start.
	%sum.%OPTIONAL