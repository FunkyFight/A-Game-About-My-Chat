///@argument user
function twitch_get_viewers_count(){
	var user = argument0
	
	xhr_get(format("https://tmi.twitch.tv/group/user/{}/chatters", user), {
		params: {},
	    done: function(res) {
			global.chatter_count = int64(res.data.chatter_count)
	    },
	    fail: function() {
	        show_message("Can't fetch user's viewer count");
	    }
	});
}