Domains
	orang = symbol

Predicates
	lelaki(orang).
	perempuan(orang).
	ayah(orang,orang).
	ibu(orang,orang).
	saudara(orang,orang).
	pasangan(orang,orang).
	orangtua(orang,orang).
	sepupu(orang,orang).
	kakek(orang,orang).
	nenek(orang,orang).
	buyut(orang,orang).
	keponakan(orang,orang).
	paman(orang,orang).
	bibi(orang,orang).
	mertua(orang,orang).
	menantu(orang,orang).
	besan(orang,orang).
	anak(orang,orang).
	cucu(orang,orang).
	cicit(orang,orang).
	ipar(orang,orang).
	hubungan(orang,orang).
		
Clauses
	lelaki(khuz).
	lelaki(shio).
	lelaki(suman).
	lelaki(chico).
	lelaki(jaka).
	lelaki(sudir).
	lelaki(oto).
	lelaki(tio).
	lelaki(bedu).
	lelaki(zaki).
	lelaki(beny).
	lelaki(tono).
	lelaki(dudi).
	lelaki(fandy).
	lelaki(fino).
	
	perempuan(nani).
	perempuan(erin).
	perempuan(qiqa).
	perempuan(sisi).
	perempuan(eli).
	perempuan(tini).
	perempuan(wati).
	perempuan(ina).
	perempuan(santi).
	perempuan(retno).
	perempuan(ita).
	perempuan(vio).
	
	ayah(suman,khuz).
	ayah(suman,shio).
	ayah(oto,nani).
	ayah(oto,chico).
	ayah(oto,erin).
	ayah(bedu,qiqa).
	ayah(bedu,sudir).
	ayah(beny,sisi).
	ayah(beny,eli).
	ayah(beny,tio).
	ayah(tono,tini).
	ayah(dudi,zaki).
	ayah(dudi,wati).
	ayah(dudi,beny).
	ayah(fandy,ina).
	ayah(fandy,santi).
	ayah(fino,tono).
	
	ibu(nani,khuz).
	ibu(nani,shio).
	ibu(sisi,nani).
	ibu(sisi,chico).
	ibu(sisi,erin).
	ibu(tini,qiqa).
	ibu(tini,sudir).
	ibu(ina,sisi).
	ibu(ina,eli).
	ibu(ina,tio).
	ibu(santi,tini).
	ibu(retno,zaki).
	ibu(retno,wati).
	ibu(retno,beny).
	ibu(ita,ina).
	ibu(ita,santi).
	ibu(vio,tono).
	
	saudara(khuz,shio).
	saudara(shio,khuz).
	saudara(nani,chico).
	saudara(nani,erin).
	saudara(chico,nani).
	saudara(chico,erin).
	saudara(erin,nani).
	saudara(erin,chico).
	saudara(qiqa,sudir).
	saudara(sudir,qiqa).
	saudara(sisi,eli).
	saudara(sisi,tio).
	saudara(eli,sisi).
	saudara(eli,tio).
	saudara(tio,sisi).
	saudara(tio,eli).
	saudara(zaki,wati).
	saudara(zaki,beny).
	saudara(wati,zaki).
	saudara(wati,beny).
	saudara(beny,zaki).
	saudara(beny,wati).
	saudara(ina,santi).
	saudara(santi,ina).

	pasangan(suman,nani).
	pasangan(nani,suman).
	pasangan(jaka,qiqa).
	pasangan(qiqa,jaka).
	pasangan(oto,sisi).
	pasangan(sisi,oto).
	pasangan(tini,bedu).
	pasangan(bedu,tini).
	pasangan(beny,ina).
	pasangan(ina,beny).
	pasangan(santi,tono).
	pasangan(tono,santi).
	pasangan(dudi,retno).
	pasangan(retno,dudi).
	pasangan(fandy,ita).
	pasangan(ita,fandy).
	pasangan(fino,vio).
	pasangan(vio,fino).
	
	orangtua(X,Y):-ayah(X,Y),lelaki(X).
	orangtua(X,Y):-ibu(X,Y),perempuan(X).
	
	sepupu(X,Y):-orangtua(A,X),orangtua(B,Y),saudara(A,B).
	
	kakek(X,Y):-orangtua(Z,Y),orangtua(X,Z),lelaki(X).
	
	nenek(X,Y):-orangtua(Z,Y),orangtua(X,Z),perempuan(X).
	
	buyut(X,Y):-orangtua(A,Y),orangtua(B,A),orangtua(X,B).
	
	canggah(X,Y):-orangtua(A,Y),orangtua(B,A),orangtua(C,B),orangtua(X,C).
	
	keponakan(X,Y):-orangtua(Z,X),saudara(Z,Y).
	
	paman(X,Y):-orangtua(Z,Y),saudara(Z,X),lelaki(X).
	
	bibi(X,Y):-orangtua(Z,Y),saudara(Z,X),perempuan(X).
	
	mertua(X,Y):-pasangan(Y,Z),orangtua(X,Z).
	
	menantu(X,Y):-pasangan(X,Z),orangtua(Y,Z).
	
	besan(X,Y):-pasangan(A,B),orangtua(X,A),orangtua(Y,B).
	
	anak(X,Y):-orangtua(Y,X).
	
	cucu(X,Y):-orangtua(Y,A),orangtua(A,X).
	
	cicit(X,Y):-orangtua(Y,A),orangtua(A,B),orangtua(B,X).
	
	ipar(X,Y):-saudara(X,Z),pasangan(Z,Y).
	ipar(Y,X):-saudara(X,Z),pasangan(Z,Y).
	
	hubungan(X,Y):-cucu(X,Y),lekaki(Y),write(kakek).
	hubungan(X,Y):-cucu(X,Y),perempuan(Y),write(nenek).
	hubungan(X,Y):-cicit(X,Y),write(buyut).