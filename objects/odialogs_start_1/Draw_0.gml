var txt = nat(format("{}.{}", dialogKey, current))
string_replace_all(txt, "$PLAYER", oGame.player_name)

scribble("[ftn_normal][fa_center]" + txt).draw(x, y, global.typist)



/// Events
// Name Asking
if(nameAsked) {
	scribble(format("[rainbow][fa_center]twitch.tv/{}[/rainbow]", txtbox)).draw(x, y + 50)	
}