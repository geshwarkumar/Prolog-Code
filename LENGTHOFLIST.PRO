domains
	%symbollist = symbol*
	integerlist = integer*
predicates
	%writelist(symbollist,integer)
	writelist(integerlist,integer)
clauses
	writelist([],0).%TERMINATES LIST CONDITION
	writelist([_|Tail],L):-
					writelist(Tail,L1),
					L = L1 + 1 .
goal
	%writelist([ram,mohan,syam,maya,sumit],Length).
	writelist([1,2,3,4,5,6],Length).
	%lengthlist(L).