#!/usr/bin/env lua

local etlua = require "etlua"

if #arg > 0 then
	local iname = arg[1]
	local ifile, error = io.open(iname, "r")
	if ifile then
		local template, error = etlua.compile(ifile:read("*a"))
		ifile:close()
		if template then
			local data
			if #arg > 1 then
				local dname = arg[2]
				local dchunk, error = loadfile(dname)
				if dchunk then
					local status, x = pcall(dchunk)
					if status then
						data = x
					else
						print("could not parse data file "..dname..": "..x)
						os.exit(1)
					end
				else
					print("could not open data file "..dname..": "..error)
					os.exit(1)
				end
			end
			local oname = iname:gsub("%.[^.]*$", ".html")
			local ofile = io.open(oname, "w")
			ofile:write(template(data))
			ofile:close()
		else
			print("could not parse template file "..iname..": "..error)
			os.exit(1)
		end
	else
		print("could not open template file "..iname..": "..error)
		os.exit(1)
	end
else
	print("usage:")
	print(" $ "..arg[0].." <template file> [data file]")
	os.exit(1)
end