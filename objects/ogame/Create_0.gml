/// User data
global.channel = "funkyyfight" // A DELETE DEMAIN
player_name = global.channel
global.chatter_count = 0
global.language = "fr"

/// Scribble Text Engine
global.typist = scribble_typist()
global.typist.in(0.5, 3)
global.typist.sound([snd_typewriter], 1, 1, 1)

/// Options
// Controls
controls_left = ord("Q")
controls_right = ord("D")
controls_up = ord("Z")
controls_down = ord("S")
controls_interact = ord("E")

// Language
nat_set(global.language)


alarm[0] = 3 * 60
global.nextRoom = rm_1_1