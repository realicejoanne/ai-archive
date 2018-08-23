Domains
	list = symbol*
	elm = symbol

Predicates
	split(list,elm,list).

Clauses
	split([H|T],H,T).