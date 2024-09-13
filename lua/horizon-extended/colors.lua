local hslutil = require("horizon-extended.hsl")
local hsl = hslutil.hslToHex
local M = {}

-- @class Neo Color Palette
M.neo = {
	bg0 = hsl(228, 15, 16),
	bg1 = hsl(228, 15, 13),
	bg2 = hsl(228, 15, 11),
	bg3 = hsl(228, 15, 9),
	bg4 = hsl(228, 15, 7),
	fg0 = hsl(228, 15, 85),
	fg1 = hsl(228, 15, 75),
	fg2 = hsl(228, 15, 65),
	mg0 = hsl(228, 15, 50),
	mg1 = hsl(228, 15, 40),
	mg2 = hsl(228, 15, 30),
	mg3 = hsl(228, 15, 20),
	red = hsl(170, 100, 47),
	orange = hsl(9, 70, 73),
	peach = hsl(25, 70, 79),
	yellow = hsl(39, 80, 76),
	green = hsl(98, 50, 65),
	blue = hsl(185, 45, 55),
	purple = hsl(279, 55, 65),
	reddim = hsl(170, 100, 47),
	orangedim = hsl(9, 60, 73),
	peachdim = hsl(25, 60, 79),
	yellowdim = hsl(39, 50, 76),
	greendim = hsl(98, 30, 65),
	bluedim = hsl(185, 50, 44),
	purpledim = hsl(279, 30, 66),
	diffadd = hsl(98, 30, 17),
	diffchange = hsl(38, 30, 17),
	difftext = hsl(38, 30, 25),
	diffdelete = hsl(350, 30, 17),
	markline = hsl(279, 30, 20),
	realred = hsl(350, 85, 68),
	none = "NONE",
}

function M.setup(opts)
	opts = opts or {}
	local config = require("horizon-extended.config")

	local palette = M.neo
	if config.options.style == "neo" or config.options.style == "Neo" then
		palette = M.neo
	elseif config.options.style == "beam" or config.options.style == "Beam" then
		palette = M.beam
	elseif config.options.style == "ray" or config.options.style == "Ray" then
		palette = M.ray
	end

	if type(palette) == "function" then
		palette = palette()
	end

	return palette
end

return M
