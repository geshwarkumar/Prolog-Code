domains
	integerlist = integer*
predicates
	nondeterm sumdigit(integerlist,integer)
clauses
	sumdigit([],0).
	sumdigit([H|T],Sum):-
					sumdigit(T,SumTail),
					Sum = H + SumTail .
goal
	sumdigit([1,2,3,4,5],Sum).