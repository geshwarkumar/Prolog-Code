domains
	symbollist = symbol*
	integerlist = integer*
predicates
	writelist(symbollist)
	writelist(integerlist)
clauses
	writelist([]).%TERMINATES LIST CONDITION
	writelist([Head|Tail]):-
					write(Head),
					nl,
					writelist(Tail).
goal
	writelist([ram,mohan,syam,maya,sumit]),
	writelist([1,2,3,4,5,6]).