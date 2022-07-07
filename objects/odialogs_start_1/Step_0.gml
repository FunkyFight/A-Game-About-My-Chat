if(keyboard_check_pressed(oGame.controls_interact) && !nameAsked) {
	
	current += 1
	
	if(current == maxDialog) {
		//Que faire lorsque dialogue fini
		var ins = instance_create_layer(x, y, "Instances", oKeyword_notAlone)
		
		instance_destroy()
		return;	
	}
	
	if(current == 23) {
		// Nom demandé
		nameAsked = true
		canWrite = true
		keyboard_string = ""
	}
}


// Managing name asking
if(nameAsked) {
	if(keyboard_check(vk_anykey) && canWrite) {
		if(string_length(keyboard_string) < limit) {
			txtbox = keyboard_string
		} else {
			keyboard_string = txtbox	
		}
	}
	
	if(keyboard_check_pressed(vk_enter)) {
		current = "lookingForStream"
		canWrite = false
		global.channel = format("#{}", txtbox)
		instance_create_layer(0, 0, "Instances", oConnection)
		oGame.player_name = txtbox
		current = 24
		nameAsked = false
	}
}
