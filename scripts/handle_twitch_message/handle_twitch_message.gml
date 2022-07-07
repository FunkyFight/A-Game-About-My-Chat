// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_twitch_message(){
	var name = argument0
	var message = argument1
	
	
	
	for(var i = 0; i < instance_number(oTwitch_wait_for_message_promise); i++) {
		var c_ins = instance_find(oTwitch_wait_for_message_promise, i)
		
		var areMessagesTheSame = true
		
		for(var j = 0; j < string_length(message); j++) {
			if(string_char_at(message, i) == string_char_at(c_ins.message_expected, i)) {
				continue
			} else {
				areMessagesTheSame = false
			}
		}
		
		if(areMessagesTheSame) {
			c_ins.whenReceivingOneFunction(name, message)
			c_ins.times += 1
			
			console_log(c_ins.times)
			console_log(c_ins.maxtimes)
			
			if(c_ins.times >= c_ins.maxtimes) {
				c_ins.whenDoneFunction()
				instance_destroy(c_ins)
			}
		}
		

	}
	
}