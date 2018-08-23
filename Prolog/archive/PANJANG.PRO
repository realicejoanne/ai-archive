Domains
 list = integer*
 
Predicates
 pjg(list,list)
 
Clauses
 pjg([],[]).
 pjg([H|T],X):-pjg(T,N),X=N+1.