
default:	generateFiles zip 

generateSchema:
	../Stylesheets-dev/bin/teitorelaxng --odd leap.odd.xml leap.rng;	

generateHTML:
	../Stylesheets-dev/bin/teitohtml --odd --profile=LEAP leap.odd.xml leap.html;	

generateFiles:	generateSchema generateHTML

zip:
	rm leap.zip; zip leap.zip leap.odd.xml leap-doc.css leap.html leap.rng leap-template-letters.xml leap-template-diaries.xml