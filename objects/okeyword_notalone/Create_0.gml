maxtimes = round(global.chatter_count * 25 / 100)

x = 200
y = window_get_height()/2 + 2000

TweenEasyMove(x, y, window_get_width()/2, window_get_height()/2, 0, 60*10, EaseInOutCubic)

promise = wait_for_message(nat("keyword.notAlone"), maxtimes, noone, function(name, msg) {
	var i = instance_create_layer(x, y, "Instances", oPopupMessage)
	randomize()
	i.x = irandom_range(100, room_width - 100)
	i.y = irandom_range(100, room_height - 100)
	i.viewer_name = name
	i.viewer_msg = msg
}, function() {
	var seq = layer_sequence_create("Transition", room_width/2, room_height/2, sq_whiteTransition)
	layer_sequence_play(seq)
	instance_destroy()
})

