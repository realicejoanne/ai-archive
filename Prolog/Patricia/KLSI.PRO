Domains
	list = integer*
	nilai = integer

Predicates
	del(nilai,list,list)

Clauses
	del(X,[X|Tail],Tail).
	del(X,[Head|Tail],[Head|NewTail]):-del(X,Tail,NewTail).