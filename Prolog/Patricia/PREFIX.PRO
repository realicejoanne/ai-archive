Domains
	list = integer*
	
Predicates
	prefix(list,list).
	
Clauses
	prefix([],[_|_]).
	prefix([H|T],[H|U]):-prefix(T,U).	