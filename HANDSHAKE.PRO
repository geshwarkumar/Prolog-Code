domains
	Person = symbol*
predicates
	nondeterm shaker(symbol,symbol)
	nondeterm member(symbol,Person)
clauses
	member(X,[X|_]).
	member(X,[_|T]):-
				member(X,T).
	shaker(X,Y):-
				member(X,[person1,person2]),
				member(Y,[person3,person4]).
goal
	shaker(A,B).