Domains
	list=integer*
	elmt=integer
	
Predicates
	member(elmt,list).
	prefix(list,list).
	suffix(list,list).
	sublist(list,list).

Clauses
	member(X,[X|_]).
	member(X,[_|T]) :- member(X,T).
	
	prefix([],[_|_]).
	prefix([H|T],[H|U]) :- prefix(T,U).
	
	suffix(S,S).
	suffix(S,[_|T]) :- suffix(S,T).
	
	sublist(Sb,L) :- prefix(Sb,L).
	sublist(Sb,[_|T]) :- sublist(Sb,T).