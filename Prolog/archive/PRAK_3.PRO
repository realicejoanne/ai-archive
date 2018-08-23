Domains
	list = symbol*
	elm = symbol
	
	dlist = integer*
	delm = integer
	
Predicates
	split(list,elm,list).
	
	sum(dlist,dlist,dlist).
	mines(dlist,dlist,dlist).
	times(dlist,dlist,dlist).
	div(dlist,dlist,dlist).
	
	long(dlist,delm).
	sumlist(dlist,delm).
	
Clauses
	split([H|T] , H , T).
	
	sum([],[],[]).
	sum([H1|T1],[H2|T2],[H3|T3]) :- H3=H1+H2 , sum(T1,T2,T3).
	
	mines([],[],[]).
	mines([H1|T1],[H2|T2],[H3|T3]) :- H3=H1-H2 , mines(T1,T2,T3).
	
	times([],[],[]).
	times([H1|T1],[H2|T2],[H3|T3]) :- H3=H1*H2 , times(T1,T2,T3).
	
	div([],[],[]).
	div([H1|T1],[H2|T2],[H3|T3]) :- H3=H1/H2 , div(T1,T2,T3).
	
	long([],0).
	long([_|T1],X) :- long(T1,N) , X=N+1 .
	
	sumlist([H1|[]],H1).
	sumlist([H1|T1],Y) :- sumlist(T1,N) , Y=N+H1.