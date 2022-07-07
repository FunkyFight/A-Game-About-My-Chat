hspd = keyboard_check(oGame.controls_right) - keyboard_check(oGame.controls_left)
vspd = keyboard_check(oGame.controls_down) - keyboard_check(oGame.controls_up)

if(place_meeting(x + hspd * spd, y, oWallParent)) {
	while(!place_meeting(x + sign(hspd * spd), y, oWallParent)) {
		x = x + sign(hspd * spd)
	}
	hspd = 0
}

if(place_meeting(x, y + vspd * spd, oWallParent)) {
	while(!place_meeting(x, y + sign(vspd * spd), oWallParent)) {
		y = y + sign(vspd * spd)
	}
	vspd = 0
}

if(!isChatting) {
	x = x + hspd * spd
	y = y + vspd * spd	
}

if(keyboard_check_pressed(oGame.controls_interact)) {
	if(!isChatting) {
		for(var i = 0; i < instance_number(oInteractable); i++) {
			var current = instance_find(oInteractable, i)
			
			if(!current.isActive) return;
			
			if(current.intertype == InteractionType.DIALOG) {
				var dial = instance_create_layer(x, y, "Instances", oDialog)
				dial.filepath = current.file
				isChatting = true
			}
		}
	}
}