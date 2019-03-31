/*PROLOG CODE TO MERGE TO LIST
-GESHWAR KUMAR
-20/02/2017*/

domains
	Integerlist = integer*
predicates
	nondeterm merge(Integerlist,Integerlist,Integerlist) %FOR MEGE MEMBER
clauses
	merge([],T,T).
	merge([H1|T1],[H2|T2],[H1|T3]):-
				merge(T1,[H2|T2],T3).
goal
	merge([1,2,3,4,5],[6,7,8,9,10],MergeList).