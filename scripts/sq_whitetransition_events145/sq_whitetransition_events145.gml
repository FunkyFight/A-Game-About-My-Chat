// Auto-generated stubs for each available event.

function sq_whiteTransition_Moment()
{
	audio_play_sound(snd_transition, 1, 1)
	with(oWhite) {
		TweenEasyFade(0, 1, 0, fps*10, EaseInOutCubic)	
	}
}



function sq_whiteTransition_Moment_1()
{
	audio_stop_sound(snd_transition)
	room = global.nextRoom
}