Domains
	orang = symbol
	
Predicates
	lelaki (orang).
	perempuan (orang).
	ayah (orang,orang).
	ibu (orang,orang).
	nenek (orang,orang).
	kakek (orang,orang).
	orangtua (orang,orang).
	
Clauses
	lelaki (budi).
	lelaki (tono).
	lelaki (ari).
	perempuan (ani).
	perempuan (ina).
	ayah (budi,tono).
	ayah (ari,budi).
	ibu (ani,tono).
	ibu (ina,budi).
	orangtua (budi,tono).
	orangtua (ani,tono).
	orangtua (ari,budi).
	orangtua (ina,budi).
	nenek (X,Y) :-ibu (X,Z), orangtua (Z,Y), perempuan (X).
	kakek (X,Y) :-ayah (X,Z), orangtua (Z,Y), lelaki (X).