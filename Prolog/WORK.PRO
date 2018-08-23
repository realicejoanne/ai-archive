Domains
	dlist = integer*
	
Predicates
	sum(dlist,dlist,dlist).

Clauses
	sum([],[],[]).
	sum([H1|T1],[H2|T2],[H3|T3]):-H3=H1+H2,sum(T1,T2,T3).
