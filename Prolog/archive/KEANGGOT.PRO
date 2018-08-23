Domains
 nama = symbol
 list = nama*
 
Predicates
 anggota(nama,list)
 
Clauses
 anggota(H,[H|_]).
 anggota(X,[_|T]):-anggota(X,T).
 