domains
	dnama = symbol
	
predicates
	laki(dnama)
	perempuan(dnama)
	ayah(dnama,dnama)
	ibu(dnama,dnama)
	saudara(dnama,dnama)
	paman(dnama,dnama)
	bibi(dnama,dnama)
	anaklaki(dnama,dnama)
	anakcewe(dnama,dnama)
	kakek(dnama,dnama)
	nenek(dnama,dnama)
	
clauses
	laki(budi).
	laki(andi).
	laki(danu).
	laki(ito).
	
	perempuan(ani).
	perempuan(nani).
	perempuan(mira).
	perempuan(cici).
	
	ayah(budi,mira).
	ayah(budi,danu).
	ayah(budi,andi).
	ayah(andi,ito).
	ayah(andi,cici).
	
	ibu(ani,mira).
	ibu(ani,danu).
	ibu(ani,andi).
	ibu(nani,ito).
	ibu(nani,cici).
	
	saudara(mira,danu).
	saudara(mira,andi).
	saudara(danu,mira).
	saudara(danu,andi).
	saudara(andi,mira).
	saudara(andi,danu).
	saudara(ito,cici).
	saudara(cici,ito).
	
	anaklaki(X,Y) :- ayah(Y,X), laki(X).
	anaklaki(X,Y) :- ibu(Y,X), laki(X).
	anakcewe(X,Y) :- ayah(Y,X), perempuan(X).
	anakcewe(X,Y) :- ibu(Y,X), perempuan(X).	
	
	kakek(X,Y) :- ayah(X,Z), ayah(Z,Y).
	kakek(X,Y) :- ayah(X,Z), ibu(Z,Y).
	nenek(X,Y) :- ibu(X,Z), ayah(Z,Y).
	nenek(X,Y) :- ibu(X,Z), ibu(Z,Y).
	
	orangtua(X,Y) :- ayah(X,Y).
	orangtua(X,Y) :- ibu(X,Y).
	
	paman(X,Y) :- saudara(X,Z), orangtua(Z,Y), laki(X).
	bibi(X,Y) :- saudara(X,Z), orangtua(Z,Y), perempuan(X).
	
	cucu(X,Y) :- ayah(Z,X), ayah(Y,Z).
	cucu(X,Y) :- ibu(Z,X), ayah(Y,Z).
	cucu(X,Y) :- ayah(Z,X), ibu(Y,Z).
	cucu(X,Y) :- ibu(X,Z), ibu(Y,Z).