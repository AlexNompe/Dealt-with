if instance_exists(target) distance = [target.x, (y * 2.1 - target.y) * 0.8 + 16]

mirror_alpha = abs((distance[1] - 20) / max_reflection_distance)