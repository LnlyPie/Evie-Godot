extends ColorRect

func _ready():
	set_mouse_filter(MOUSE_FILTER_IGNORE)

# To be fixed
func set_color(type, cbmode):
	var color_material = ShaderMaterial.new()
	color_material.shader = load("res://shaders/ColorFilters.gdshader")

	color_material.set_shader_param("type", type)
	color_material.set_shader_param("cbmode", cbmode)

	material = color_material
