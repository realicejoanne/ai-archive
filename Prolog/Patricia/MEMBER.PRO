Domains
	list = integer*
	elmt = integer
	
Predicates
	member(elmt,list).
	
Clauses
	member(X,[X|_]).
	member(X,[_|T]):-member(X,T).