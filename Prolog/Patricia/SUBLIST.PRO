Domains
	list = integer*
	
Predicates
	prefix(list,list).
	sublist(list,list).
	
Clauses
	prefix(L,L).
	prefix([H|T],[H|U]):-prefix(T,U).
	
	sublist(Sb,L):-prefix(Sb,L).
	sublist(Sb,[_|T]):-sublist(Sb,T).	