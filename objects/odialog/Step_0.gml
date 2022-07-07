// If this instance exists, we already knows that players have the value isChatting to true
if(keyboard_check_pressed(oGame.controls_interact)) { // If player press the interact button
	
	// Checking states
	if(ChatterboxGetOptionCount(txtbox) > 0 && mode != "CHOOSING") { // If choices but not choosing
		mode = "CHOOSING" // Give the choices to the player
		return
	}
	
	if(ChatterboxGetOptionCount(txtbox) > 0 && mode == "CHOOSING") { // If choices and player is choosing
		// Player made its choice
		mode = "READING"
		ChatterboxSelect(txtbox, selectedChoice)
		return
	}
	
	// Else if there is no choices for now
	
	if(ChatterboxIsStopped(txtbox)) { // If there is no chat left
		oPlayer.isChatting = false // Reactivate player's movement
		instance_destroy() // Destroy instance
	}
	
	if(ChatterboxIsWaiting(txtbox)) { // If Chatterbox was waiting
		ChatterboxContinue(txtbox)	// Continue
	}
	
	// Else
	ChatterboxContinue(txtbox)
}

if(keyboard_check_pressed(oGame.controls_up) && mode == "CHOOSING") { // If UP key pressed and player is making a choice in the dialog
	// Go to the above choice
	if(selectedChoice == 0) {
		selectedChoice = ChatterboxGetOptionCount(txtbox) - 1	
	} else {
		selectedChoice -= 1	
	}
}

if(keyboard_check_pressed(oGame.controls_down) && mode == "CHOOSING") {  // If DOWN key pressed and player is making a choice in the dialog
	// Aller sur l'option supérieur
	if(selectedChoice == ChatterboxGetOptionCount(txtbox) - 1) {
		selectedChoice = 0
	} else {
		selectedChoice += 1	
	}
}