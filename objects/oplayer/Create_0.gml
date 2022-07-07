enum PlayerGamemode {
	ANYDIRECTION,
	PLATFORMER
}

vspd = 0
hspd = 0
spd = 5

grav = 2
isJumping = false

playerGM = PlayerGamemode.PLATFORMER

isChatting = false

// Functions chatterbox
ChatterboxAddFunction("continueSequence", continueSequence)