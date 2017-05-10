
all: index.html style.css

style.css: style.sass
	sass style.sass style.css

index.html: index.etlua projects.lua
	render.lua index.etlua projects.lua

clean:
	rm -rf index.html style.css