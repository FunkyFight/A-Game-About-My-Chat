/// @description Any other dialogs manager

// Loading the yarn file
filepath = "dialogs/victoire_1_1_fr.yarn"

// READING or CHOOSING
mode = "READING"
selectedChoice = 0

cinematic = noone

// Loading and creation
loaded = ChatterboxLoadFromFile(filepath)

txtbox = ChatterboxCreate(loaded)

// Starting
ChatterboxJump(txtbox, "Root")
console_log(txtbox)