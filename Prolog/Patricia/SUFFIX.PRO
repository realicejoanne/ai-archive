Domains
	list = integer*
	
Predicates
	suffix(list,list).
	
Clauses
	suffix(S,S).
	suffix(S,[_|T]):-suffix(S,T).	