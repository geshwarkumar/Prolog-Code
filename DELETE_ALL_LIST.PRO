/*PROLOG CODE TO DELETE ALL OCCUARANCES ELEMENT IN A LIST
-GESHWAR KUMAR
-06/02/2017*/

domains
	Integerlist = integer*
predicates
	%nondeterm member(integer,Integerlist,integer)%FOR CHECK MEMEBER OR NOT
	nondeterm delete(Integerlist,Integerlist) %FOR DELETE MEMBER
clauses
	/*member(X,[X|_]).
	%member(X,[_|T])
	delete([],_,[]).
	delete([H|T],Num,[H1|T1]):-
				member(Num,T,_),
				Temp = X ,*/
				
	
	delete([],[]).
	delete([_|T],T1):-
					%Temp = Num - 1 ,
					delete(T,T1).
					
						
goal
	%member(1,[1,2,3,4,5],0).
	delete([1,2,3,4,5],RemainList).