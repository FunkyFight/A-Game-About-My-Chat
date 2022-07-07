
if(txtAlpha > 0) {
	txtAlpha -= 1/(60*5)	
}

draw_set_halign(fa_center)
draw_set_font(ftn_normal)
draw_set_alpha(txtAlpha)
draw_set_color(#78e08f)
draw_text(x, y, head)
draw_set_color(c_white)
draw_text(x, y + 50, foot)