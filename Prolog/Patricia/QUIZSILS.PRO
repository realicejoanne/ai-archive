Domains
	orang = symbol
	
Predicates
	orangtua(orang,orang).
	pasangan(orang,orang).
	saudara(orang,orang).
	besan(orang,orang).
	ipar(orang,orang).
	
Clauses
	orangtua(bena,jingan).
	orangtua(bena,budi).
	orangtua(bena,lala).
	orangtua(siti,jingan).
	orangtua(siti,budi).
	orangtua(siti,lala).
	orangtua(joko,martin).
	orangtua(widi,martin).
	orangtua(lala,ayu).
	orangtua(lala,fadel).
	orangtua(martin,ayu).
	orangtua(martin,fadel).
	orangtua(bob,qory).
	orangtua(bob,cinta).
	orangtua(bob,laura).
	orangtua(ayu,qory).
	orangtua(ayu,cinta).
	orangtua(ayu,laura).
	orangtua(fadel,gore).
	orangtua(sausan,gore).
	
	pasangan(bena,siti).
	pasangan(siti,bena).
	pasangan(joko,widi).
	pasangan(widi,joko).
	pasangan(lala,martin).
	pasangan(martin,lala).
	pasangan(bob,ayu).
	pasangan(ayu,bob).
	pasangan(fadel,sausan).
	pasangan(sausan,fadel).
	
	saudara(jingan,budi).
	saudara(jingan,lala).
	saudara(budi,jingan).
	saudara(budi,lala).
	saudara(lala,jingan).
	saudara(lala,budi).
	saudara(ayu,fadel).
	saudara(fadel,ayu).
	saudara(qory,cinta).
	saudara(qory,laura).
	saudara(cinta,qory).
	saudara(cinta,laura).
	saudara(laura,qory).
	saudara(laura,cinta).
	
	besan(X,Y):-orangtua(X,A),orangtua(Y,B),
		pasangan(A,B).
	ipar(X,Y):-saudara(X,Z),pasangan(Z,Y).
	ipar(X,Y):-saudara(Y,Z),pasangan(Z,X).