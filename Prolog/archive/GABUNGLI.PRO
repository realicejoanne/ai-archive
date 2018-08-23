Domains
 list = integer*
 nama = symbol*
 
Predicates
 gabung(list,list,list)
 jogres(nama,nama,nama)
 
Clauses
 gabung([],L2,L2).
 gabung([X|L1],List2,[X|L3]):-gabung(L1,List2,L3).
 jogres([],L2,L2).
 jogres([X|L1],List2,[X|L3]):-jogres(L1,List2,L3).
