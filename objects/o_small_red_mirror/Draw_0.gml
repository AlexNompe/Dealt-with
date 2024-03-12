if (!surface_exists(surf)) surf = surface_create(bbox_width,bbox_height)

surface_set_target(surf)

//layerID = layer_get_id("Instances")

draw_clear_alpha(c_black,0)
//gpu_set_blendmode(bm_subtract)
draw_set_color(c_black)
if instance_exists(target) draw_sprite_ext(target.sprite_index, 0, distance[0] - bbox_left, distance[1] - bbox_top, 1, 1, 0, true, mirror_alpha)
//draw_circle(mouse_x - (336 - 120), mouse_y - (192 - 120), 32, c_black)
//gpu_set_blendmode(bm_normal)

surface_reset_target()

//layer_set_visible(layerID, 0)
draw_self()

if instance_exists(target) and depth >= target.depth draw_surface(surf, bbox_left, bbox_top)

//draw_text(x, y + bbox_height + 16, mirror_alpha)
//draw_text(x, y + bbox_height + 32, distance)
//draw_text(x, y + bbox_height + 48, distance[0] - bbox_left)
//draw_text(x, y + bbox_height + 64, distance[1] - bbox_top)
//draw_text(x, y + bbox_height + 24, bbox_height)
//draw_text(x, y + bbox_height + 32, bbox_left)
//draw_text(x, y + bbox_height + 40, bbox_top)