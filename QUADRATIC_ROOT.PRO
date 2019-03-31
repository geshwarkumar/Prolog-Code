/*PROLOG CODE TO FIND THE ROOT OF QUADRATIC EQUATION
-GESHWAR KMAR
-23/02/2017*/

DOMAINS
	A,B,C,D,Root,Root1,Root2 = real
PREDICATES
	nondeterm runroot
	nondeterm roots(real,real,real,real)
CLAUSES
	runroot:-
		write("Quadratic equation is of the form Ax^2 + BX + C = 0"),nl,
		/*READ VALUE OF A,B,AND C*/
		write("Type the coefficient of x^2, A: "),readreal(A),
		write("Type the coefficient of x^1, B: "),readreal(B),
		write("Type the coefficient of x^0, C: "),readreal(C),
		
		/*CALCULATE THE VALUE OF D*/
		D = B * B - 4.0 * A * C ,
		write("The value of Determinent is ",D,"\n"),
		
		roots(A,B,C,D).
	roots(A,B,C,D):-
		D = 0.0,	%CONDITION CHECKING
		write("Only one root are possible.\n"),
		Root = (-B / (2 * A)), %FORMULA FOR ROOT
		write(Root),nl
		
		;	%OR/ELSE PART START
		
		D > 0.0,	%CONDITION CHECKING
		Root1 = ((-B + sqrt(D))/(2*A)),%FORMULA FOR ROOT
		Root2 = ((-B - sqrt(D))/(2*A)),
		write("First root is = ",Root1,"\n"),
		write("Second root is = ",Root2,"\n")
		
		;	%OR/ELSE PART START
		
		write("Roots are Complex, cannot be determined \n").
GOAL
	runroot.