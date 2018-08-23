Domains
	num = integer
	
Predicates
	faktorial(num,num).

Clauses
	faktorial(0,1):-!.
	faktorial(1,1):-!.
	faktorial(N,X):-NN=N-1,
	faktorial(NN,X1),
	X=X1*N.