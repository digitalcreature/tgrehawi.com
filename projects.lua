local function github(repo)
	return "https://github.com/"..repo
end

links = {
	{
		name = "web",
		icon = "fa-globe",
	},
	{
		name = "itch",
		icon = "fa-gamepad",
	},
	{
		name = "devpost",
		icon = "fa-code",
	},
	{
		name = "ludumdare",
		display = "ludum dare",
		icon = "fa-trophy",
	},
	{
		name = "github",
		icon = "fa-github-alt",
	},
}

projects = {
	{
		name = "tgrehawi.com",
		thumb = "media/tgrehawi.com.png",
		links = {
			web = "https://tgrehawi.com",
			github = github "tgrehawi/tgrehawi.com",
		},
	},
	{
		name = "roguelike one",
		thumb = "media/roguelikeone.gif",
		links = {
			github = github "hyperfocusgames/ld38",
			ludumdare = "https://ldjam.com/events/ludum-dare/38/roguelike-one",
			itch = "https://hyperfocusgames.itch.io/rogue",
		},
	},
	{
		name = "vapr",
		thumb = "media/vapr.gif",
		links = {
			github = github "tgrehawi/vapr",
			devpost = "https://devpost.com/software/hackital16",
		},
	},
	{
		name = "iodine monoxide",
		thumb = "media/iodinemonoxide.gif",
		links = {
			github = github "tgrehawi/iodinemonoxide",
			devpost = "https://devpost.com/software/leap-motion-classroom-tool",
		},
	},
	{
		name = "channel07",
		thumb = "media/channel07.gif",
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

function thumb_bg(project)
	if project.thumb then
		return "background-image: url("..project.thumb..")"
	else
		return ""
	end
end