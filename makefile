all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	cd ../../../Projects/iOS/onelist/
	git pull
	cd ../../../Web/amg/onelist/
	cp ../../../Projects/iOS/onelist/releasenotes.html .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css
