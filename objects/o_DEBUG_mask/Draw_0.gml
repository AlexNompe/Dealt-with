if (!surface_exists(surf)) surf = surface_create(240,240)

surface_set_target(surf)

//layerID = layer_get_id("Instances")

draw_clear(c_white)
//gpu_set_blendmode(bm_subtract)
draw_sprite_ext(spr_DEBUG_mouse, 0, mouse_x - (336 - 120), mouse_y - (192 - 120), 1, 1, 0, c_black, 1)
//draw_circle(mouse_x - (336 - 120), mouse_y - (192 - 120), 32, c_black)
//gpu_set_blendmode(bm_normal)

surface_reset_target()

//layer_set_visible(layerID, 0)
draw_surface(surf, (336 - 120), (192 - 120))