
default:	generateFiles zip 

generateFiles:
	teitorelaxng --odd --apphome=/home/jamesc/git/Stylesheets/ leap.odd.xml leap.rng; teitohtml --odd --apphome=/home/jamesc/git/Stylesheets/ --profile=LEAP leap.odd.xml leap.html;

zip:
	rm leap.zip; zip leap.zip leap.odd.xml leap-doc.css leap.html leap.rng leap-template-letters.xml leap-template-diaries.xml 

copySchema:
	cp -f leap.rng ../jamescummings.github.io/LEAP/ ; cd ../jamescummings.github.io/LEAP/ ; git commit -a -m "updates" && git push

