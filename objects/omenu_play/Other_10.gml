/// @description Lorsque Jouer choisie

TweenEasyMove(x, y, window_get_width()/2, window_get_height()/2+2000, 0, fps*7, EaseInOutCubic)

instance_create_layer(window_get_width()/2, window_get_height()/2 + 100, "Instances", oDialogs_start_1)
