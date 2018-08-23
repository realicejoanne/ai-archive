Domains
 list = integer*

Predicates
 tambah(list,list,list)
 
Clauses
 tambah([],[],[]).
 tambah([H1|T1],[H2|T2],[H3|T3]):-H3=H1+H2,tambah(T1,T2,T3).