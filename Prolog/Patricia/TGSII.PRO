Domains
	orang = symbol
	umur = integer
	
Predicates
	orang(orang,umur).
	adik(orang,orang).
	kakak(orang,orang).
	
Clauses
	orang(tuti,42).
	orang(chein,50).
	orang(iza,25).
	orang(retno,5).
	orang(siska,19).
	
	adik(X,Y):-orang(X,A),orang(Y,B),A<B.
	kakak(X,Y):-orang(X,A),orang(Y,B),A>B.