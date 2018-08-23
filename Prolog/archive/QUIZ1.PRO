domains
	list = integer*
	elm = integer

predicates
	gabung(elm, list, list)	
	balik(list,list)
	pembalik(list,list,list)
clauses
	gabung(X,[],[X]).
	gabung(X,[H|T],[H|L]):-gabung(X,T,L).
	balik(X,Y):-pembalik(X,[],Y).
	pembalik([],X,X).
	pembalik([H|T],V,W):-pembalik(T,[H|V],W).
