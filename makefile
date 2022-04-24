all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/onelist/ pull
	cp ~/Developer/onelist/releasenotes.html .
	cp ~/Developer/onelist/releasenotes.json .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css
