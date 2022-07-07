if(main_menu_choice == noone) { // Si on est sur le menu principal
	if(keyboard_check_pressed(oGame.controls_left)) {
		if(choice <= 0) {
			choice = 2	
		} else {
			choice -= 1	
		}
	}

	if(keyboard_check_pressed(oGame.controls_right)) {
		if(choice >= 2) {
			choice = 0	
		} else {
			choice += 1	
		}
	}
	
	if(keyboard_check_pressed(oGame.controls_interact)) {
		// Si on a fait notre choix
		main_menu_choice = choice
		
		for(var i = 0; i < 3; i++) {
			if(i == main_menu_choice) { // Si c'est l'option choisie
				with(main_menu_choice_object_list[i]) {
					event_user(0)
					isChosen = true
				}	
			} else {
				with(main_menu_choice_object_list[i]) {
					event_user(1)
				}	
			}
		}
	}
}

