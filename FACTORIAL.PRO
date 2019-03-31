/*domains
	num = integer
	factnum = integer
	intlist = integer*
predicates
	nondeterm fact(integer,integer,intlist)
clauses
	fact(factnum,0,[]).
	fact(factnum,facttemp,[H|T]):-
				fact(factnum,facttemp,T),
				H = facttemp *  ,
				facttemp = facttemp + 1 .
goal
	fact(5,1,num).*/
domains
	integerlist = integer*
predicates
	nondeterm sumdigit(integerlist,integer)
clauses
	sumdigit([],1).
	sumdigit([H|T],Sum):-
					sumdigit(T,SumTail),
					Sum = H * SumTail .
goal
	sumdigit([1,2,3,4,5],Sum).