var speaker = ChatterboxGetContentSpeaker(txtbox, 0) // Fetch content speaker

if(speaker == "$PLAYER") { // Replace by player name
	speaker = oGame.player_name	
}

// Draw name
scribble(format("[fa_center][ftn_normal]{}", speaker)).draw(window_get_width()/2, window_get_height()-200)

// Draw speech with typist (defined in oGame)
scribble(format("[fa_center][ftn_x08]{}", ChatterboxGetContentSpeech(txtbox, 0))).draw(window_get_width()/2, window_get_height()-150, global.typist)

// If player is choosing then show the choices
if(mode == "CHOOSING") {
	var options = ChatterboxGetOptionArray(txtbox)
	for(var i = 0; i < array_length(options); i++) {
		var offset = -200 - 20 * (array_length(options) * i + 1)
		if(selectedChoice == i) {
			scribble(format("[ftn_x08][#fbc531]{}", ChatterboxGetOption(txtbox, i))).draw(window_get_width()/8, window_get_height()+offset)	
		} else {
			scribble(format("[ftn_x08]{}", ChatterboxGetOption(txtbox, i))).draw(window_get_width()/8, window_get_height()+offset)	
		}
	}
}