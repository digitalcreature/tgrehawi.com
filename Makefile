
index.html: index.etlua projects.lua
	render.lua index.etlua projects.lua

clean:
	rm -rf index.html