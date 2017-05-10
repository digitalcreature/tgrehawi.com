local function github(repo)
	return "https://github.com/"..repo
end

links = {
	{
		name = "web",		
	},
	{
		name = "github",
	},
	{
		name = "ludumdare",
		display = "ludum dare",
	},
	{
		name = "itch",
	},
	{
		name = "devpost",
	},
}

projects = {
	{
		name = "tgrehawi.com",
		links = {
			web = "https://tgrehawi.com",
			github = github "tgrehawi/tgrehawi.com",
		},
	},
	{
		name = "roguelike one",
		links = {
			github = github "hyperfocusgames/ld38",
			ludumdare = "https://ldjam.com/events/ludum-dare/38/roguelike-one",
			itch = "https://hyperfocusgames.itch.io/rogue",
		},
	},
	{
		name = "vapr",
		links = {
			github = github "tgrehawi/vapr",
			devpost = "https://devpost.com/software/hackital16",
		},
	},
	{
		name = "iodine monoxide",
		links = {
			github = github "tgrehawi/iodinemonoxide",
			devpost = "https://devpost.com/software/leap-motion-classroom-tool",
		},
	},
	{
		name = "channel07",
		links = {
			github = github "tgrehawi/channel07",
			itch = "https://tgrehawi.itch.io/channel07",
		},
	},
}

local project_mt = {
	__index = {
		link = function(self, linkname)
			return self.links[linkname] or "none"
		end,
	}
}

for _, project in ipairs(projects) do
	setmetatable(project, project_mt)
end