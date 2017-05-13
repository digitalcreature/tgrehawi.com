local function github(repo)
	return "https://github.com/"..repo
end

links = {
	{
		name = "web",		
	},
	{
		name = "itch",
	},
	{
		name = "devpost",
	},
	{
		name = "github",
	},
	{
		name = "ludumdare",
		display = "ludum dare",
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

function main_link(project)
	for _, link in ipairs(links) do
		if project.links[link.name] then
			return project.links[link.name]
		end
	end
	return "#"
end