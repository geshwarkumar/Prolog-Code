domains
	integerlist = integer*
predicates
	
	nondeterm member(integer,integerlist)
clauses
	member(X,[X|_]).
	member(X,[_|T]):-
				member(X,T).
goal
	member(4,[1,2,3,4,5]).