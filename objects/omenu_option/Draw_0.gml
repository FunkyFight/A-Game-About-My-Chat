if(oMenu.choice == 1) {
	scribble(format("[ftn_normal][shake][#fbc531]{}[/shake]", nat("menu.option"))).draw(x, y)	
} else {
	scribble(format("[ftn_normal]{}", nat("menu.option"))).draw(x, y)	
}