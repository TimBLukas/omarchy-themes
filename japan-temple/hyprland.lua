hl.curve("water", { type = "bezier", points = { { 0.22, 0.9 }, { 0.36, 1.0 } } })
hl.curve("mist", { type = "bezier", points = { { 0.25, 0.1 }, { 0.25, 1.0 } } })
hl.curve("ripple", { type = "bezier", points = { { 0.33, 0.0 }, { 0.2, 1.0 } } })
hl.curve("stream", { type = "bezier", points = { { 0.4, 0.0 }, { 0.4, 1.0 } } })
hl.curve("cascade", { type = "bezier", points = { { 0.19, 1.0 }, { 0.22, 1.0 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })

hl.animation({ leaf = "global", enabled = true, speed = 9, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 4.8, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 2.8, bezier = "water" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2.6, bezier = "cascade" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.2, bezier = "stream" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1.5, bezier = "mist" })
hl.animation({ leaf = "fade", enabled = true, speed = 2.2, bezier = "water" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.8, bezier = "cascade" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.7, bezier = "ripple" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 1.9, bezier = "water" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 1.3, bezier = "mist" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.7, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.3, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = false })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1.4, bezier = "easeOutQuint", style = "popin 80%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.2, bezier = "easeInOutCubic", style = "popin 90%" })
hl.animation({ leaf = "layers", enabled = true, speed = 1.4, bezier = "easeInOutCubic" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3.5, bezier = "easeOutQuint", style = "slidevert" })

hl.config({
	general = {
		gaps_in = 7,
		gaps_out = 11,
		border_size = 1,
		col = {
			active_border = { colors = { "rgba(86b8b0cc)", "rgba(26383ccc)" }, angle = 135 },
			inactive_border = "rgba(71888733)",
		},
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 12,
		rounding_power = 3.0,
		dim_inactive = false,

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			color = "rgba(0b111440)",
		},

		blur = {
			enabled = true,
			size = 10,
			passes = 3,
			xray = false,
			noise = 0.015,
			contrast = 1.02,
			brightness = 1.02,
			vibrancy = 0.12,
			ignore_opacity = true,
		},
	},

	animations = {
		enabled = true,
	},

	group = {
		col = {
			border_active = { colors = { "rgba(86b8b0cc)", "rgba(26383ccc)" }, angle = 135 },
			border_inactive = "rgba(71888733)",
			border_locked_active = { colors = { "rgba(c49a78aa)", "rgba(c49a7833)" }, angle = 90 },
			border_locked_inactive = "rgba(0b111477)",
		},
		groupbar = {
			font_size = 10,
			font_family = "monospace",
			font_weight_active = "bold",
			font_weight_inactive = "normal",
			indicator_height = 0,
			indicator_gap = 5,
			height = 22,
			gaps_in = 3,
			gaps_out = 3,
			text_color = "#e3eeeb",
			text_color_inactive = "rgba(d6e2df90)",
			col = {
				active = "rgba(0b111440)",
				inactive = "rgba(0b111422)",
			},
			gradients = true,
			gradient_rounding = 0,
			gradient_round_only_edges = false,
		},
	},
})

hl.layer_rule({
	match = { namespace = "walker" },
	no_anim = true,
	blur = true,
	ignore_alpha = 0.1,
})

hl.layer_rule({
	match = { namespace = "notifications" },
	blur = true,
	ignore_alpha = 0.2,
})

hl.layer_rule({
	match = { namespace = "swayosd" },
	blur = true,
	ignore_alpha = 0.1,
})

hl.layer_rule({
	match = { namespace = "hyprlock" },
	blur = true,
})
