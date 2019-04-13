require("util")

--Item
data:extend({{
	type = "simple-entity-with-force",
	name = "vbuck-entity",
	localised_description = {"item-description.vbuck-entity"},
	flags = {"placeable-neutral", "player-creation"},
	icon = "__VBucks__/graphics/vbuck.png",
	icon_size = 128,
	order = "b[decorative]-k[stone-rock]-a[big]",
	collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
	collision_mask = {"object-layer", "water-tile"},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	drawing_box = {{-0.5, -0.5}, {0.5, 0.5}},
	max_health = 50,
	minable = {
		mining_time = 2,
		result = "vbuck-item",
		count = 1
	},
	count_as_rock_for_filtered_deconstruction = false,
	render_layer = "object",
	resistances = {
		{
			type = "fire",
			percent = 100
		}
	},
	vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 },
	map_color = {r = 0, g = (200 / 255), b = 1},
	pictures = {
		layers = {
			{
				filename = "__VBucks__/graphics/vbuck.png",
				width = 128,
				height = 128,
				scale = 0.25,
				hr_version = {
					filename = "__VBucks__/graphics/vbuck.png",
					width = 128,
					height = 128,
					scale = 0.5,
				},
			},
			{
				filename = "__VBucks__/graphics/vbuck_shadow.png",
				width = 128,
				height = 128,
				scale = 0.25,
				draw_as_shadow = true,
				hr_version = {
					filename = "__VBucks__/graphics/vbuck_shadow.png",
					width = 128,
					height = 128,
					scale = 0.5,
					draw_as_shadow = true,
				}
			}
		}
	}
},
{
	type = "item",
	name = "vbuck-item",
	icon = "__VBucks__/graphics/vbuck.png",
	icon_size = 128,
	place_result = "vbuck-entity",
	stack_size = 100,
	order = "v",
	subgroup = "defensive-structure"
}})

--Recipe
data:extend({{
	type = "recipe",
	name = "vbuck-recipe",
	enabled = false,
	ingredients = {
		{"iron-plate", 10},
		{"small-lamp", 3},
		{"chemical-science-pack", 1}
	},
	result = "vbuck-item"
}})

--Technology
data:extend({{
	type = "technology",
	name = "vbuck-forgery",
	icon = "__VBucks__/graphics/vbuck.png",
	icon_size = 128,
	effects = {{
		type = "unlock-recipe",
		recipe = "vbuck-recipe"
	}},
	prerequisites = {
		"optics",
		"chemical-science-pack"
	},
	unit = {
		count = 50,
		time = 10,
		ingredients = {
			{"chemical-science-pack", 1}
		}
	},
	order = "vf"
}})
